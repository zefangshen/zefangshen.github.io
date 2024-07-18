---
layout: page
title: Projects
permalink: /projects/
description: Current and past projects.
nav: true
nav_order: 3
display_categories: [Current, Past]
horizontal: false
---

<!-- pages/projects.md -->
<div class="projects">
<!-- a section for featured projects -->
<a id="featured" href=".#featured">
  <h2 class="category">Featured</h2>
</a>
{% assign featured_projects = site.projects | where: "featured", true %}
{% assign featured_projects_srt = featured_projects | sort: "importance" %}
{% if projects.horizontal %}
<div class="container">
  <div class="row row-cols-1 row-cols-md-2">
  {% for project in featured_projects_srt %}
    {% include projects_horizontal.liquid %}
  {% endfor %}
  </div>
</div>
{% else %}
<div class="row row-cols-1 row-cols-md-3">
  {% for project in featured_projects_srt %}
    {% include projects.liquid %}
  {% endfor %}
</div>
{% endif %}

{% if site.enable_project_categories and page.display_categories %}

  <!-- Display categorized projects -->

{% for category in page.display_categories %}
<a id="{{ category }}" href=".#{{ category }}">

<h2 class="category">{{ category }}</h2>
</a>
{% assign categorized_projects = site.projects | where: "category", category %}
{% assign sorted_projects = categorized_projects | sort: "importance" %}

  <!-- Generate cards for each project -->

{% if page.horizontal %}

  <div class="container">
    <div class="row row-cols-1 row-cols-md-2">
    {% for project in sorted_projects %}
      {% include projects_horizontal.liquid %}
    {% endfor %}
    </div>
  </div>
  {% else %}
  <div class="row row-cols-1 row-cols-md-3">
    {% for project in sorted_projects %}
      {% include projects.liquid %}
    {% endfor %}
  </div>
  {% endif %}
  {% endfor %}

{% else %}

<!-- Display projects without categories -->

{% assign sorted_projects = site.projects | sort: "importance" %}

  <!-- Generate cards for each project -->

{% if page.horizontal %}

  <div class="container">
    <div class="row row-cols-1 row-cols-md-2">
    {% for project in sorted_projects %}
      {% include projects_horizontal.liquid %}
    {% endfor %}
    </div>
  </div>
  {% else %}
  <div class="row row-cols-1 row-cols-md-3">
    {% for project in sorted_projects %}
      {% include projects.liquid %}
    {% endfor %}
  </div>
  {% endif %}
{% endif %}
</div>
