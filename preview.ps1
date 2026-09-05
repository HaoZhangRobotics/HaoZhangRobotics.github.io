param([switch]$Build)

$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot
$rubyBin = Join-Path $PSScriptRoot 'local\rubyinstaller-3.3.12-1-x64\bin'
if (-not (Test-Path -LiteralPath (Join-Path $rubyBin 'ruby.exe'))) {
    throw 'Local Ruby is missing. See HOMEPAGE_GUIDE.md for setup instructions.'
}
$env:PATH = "$rubyBin;$env:PATH"
$env:JEKYLL_ENV = 'development'
$env:BUNDLE_GEMFILE = Join-Path $PSScriptRoot 'Gemfile'
$env:BUNDLE_PATH = Join-Path $PSScriptRoot 'local\gems'
$env:LANG = 'en_US.UTF-8'
$env:LC_ALL = 'en_US.UTF-8'
$env:RUBYOPT = "$env:RUBYOPT -EUTF-8".Trim()

& (Join-Path $rubyBin 'bundle.bat') check
if ($LASTEXITCODE -ne 0) {
    throw 'Dependencies are missing. Run bundle install with the local Ruby before starting preview.'
}

if ($Build) {
    $env:JEKYLL_ENV = 'production'
    & (Join-Path $rubyBin 'bundle.bat') exec jekyll build --destination local/build-check
} else {
    Write-Host 'Local preview: http://127.0.0.1:4000/'
    Write-Host 'Keep this window open. Save a page to rebuild and refresh automatically.'
    Write-Host 'Press Ctrl+C to stop. Restart after changing _config.yml.'
    & (Join-Path $rubyBin 'bundle.bat') exec jekyll serve --config _config.yml,_config.local.yml --livereload --force_polling
}
exit $LASTEXITCODE
