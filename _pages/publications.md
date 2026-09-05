---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% if site.publications.size > 0 and site.author.googlescholar %}
You can also find my articles on [Google Scholar]({{ site.author.googlescholar }}).
{% endif %}

{% include base_path %}
{% assign previous_year = '' %}
{% for post in site.publications reversed %}
{% assign publication_year = post.date | date: "%Y" %}
{% if publication_year != previous_year %}
<h2>{{ publication_year }}</h2>
{% assign previous_year = publication_year %}
{% endif %}
{% include archive-single.html %}
{% endfor %}
