# Homepage editing workflow

Homepage order is biography, Research interests, News, Publications. Preserve the approved English biography and interests unless explicitly requested otherwise. Keep empty News/Publications headings. All six legacy publication entries are archived; never restore them automatically. Navigation order: Publication, Project, Competition, CV, The team I joined. Competition stays empty until confirmed content is supplied.

The user writes Chinese and wants the public website in English.

All published demo videos owned by the user must have `Hao Zhang | HaoZhangRobotics.github.io` burned into every frame, with readable contrast. Use watermarked frames for posters. Preserve original sources outside published output; do not watermark borrowed/archived third-party material as the user's work. Git history has not been rewritten and can still contain earlier unwatermarked versions.

The CV page is an exception for the document itself: it hosts the user's original Chinese PDF dated July 2025, with English page labels and a clear historical-version note. Preserve the original PDF and LaTeX source under `files/cv/` and `_cv_source/`; never use old CV claims to overwrite current profile facts. `_cv_source/` is excluded from generated pages; the full Overleaf template dependencies have not been supplied.

- Read `中文编辑.md` when asked to update homepage wording or sync the Chinese draft. It is the preferred editable source for the profile, biography, research interests, and homepage news.
- Also read `项目与科研经历中文稿.md` for engineering projects and detailed research experience. Publish only completed, confirmed entries, never blank templates or pending ownership checks. The user says existing projects were reused from a senior student's website: do not assume existing project or CV text establishes ownership. Confirm which entries to replace or remove; do not infer publication authorship from project overlap.
- Translate changed Chinese content into clear academic English in `_config.yml` and `_pages/about.md`. Preserve links and factual meaning. Do not invent affiliations, achievements, authorship, dates, or paper metadata. Ask only when a factual ambiguity blocks an accurate change.
- Keep existing publication/project/CV pages unless the Chinese draft explicitly requests changes to them. An empty request section never means delete existing content.
- Keep the Chinese source and English pages consistent when editing either language. Chinese editorial notes should not appear in generated HTML.
- This is an assistant-mediated workflow: saving Chinese does not automatically invoke translation or push. Do not claim a background sync exists.
- The user has requested the ongoing workflow: Chinese edits → English sync → local validation → GitHub push. When the user requests this workflow, complete it without asking for the same routine permission again. Respect any later instruction to preview only or hold publication.
- Preserve Jekyll / AcademicPages and the existing local Ruby setup. Use `preview.ps1` for local preview. Validate production builds into `local/build-check` so an active preview's `_site` is not overwritten.
- Verify the Chinese draft, this file, and `local/` are absent from build output. Never commit local runtimes, dependencies, logs, or generated websites.
- Before pushing, inspect the diff, fetch the remote, and handle changes without overwriting user work or force-pushing. Report the commit/push outcome accurately; pushing does not itself prove GitHub Pages deployment succeeded.
