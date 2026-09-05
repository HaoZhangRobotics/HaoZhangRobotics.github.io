---
layout: single
title: "Undergraduate Engineering Demos"
permalink: /projects/undergraduate-demos/
author_profile: true
---

These small projects and reproduction exercises were completed during my first three undergraduate years. They document hands-on exploration of robotics, reinforcement learning, simulation, and mapping.

{% for demo in site.data.undergraduate_demos %}
<section style="margin:2em 0;">
  <h2>{{ demo.title }}</h2>
  <p>{{ demo.description }}</p>
  {% for clip in demo.videos %}
  <figure style="display:block;margin:1.5em 0;">
    <video controls playsinline preload="none" poster="{{ '/images/projects/undergraduate-demos/' | append: clip.slug | append: '.jpg' | relative_url }}" aria-label="{{ demo.title | append: ': ' | append: clip.caption | escape }}" style="display:block;width:100%;max-height:520px;object-fit:contain;">
      <source src="{{ '/images/projects/undergraduate-demos/' | append: clip.slug | append: '.mp4' | relative_url }}" type="video/mp4">
      <a href="{{ '/images/projects/undergraduate-demos/' | append: clip.slug | append: '.mp4' | relative_url }}">Open video</a>
    </video>
    <figcaption>{{ clip.caption }}</figcaption>
  </figure>
  {% endfor %}
</section>
{% endfor %}

[Back to projects]({{ '/Projects/' | relative_url }})
