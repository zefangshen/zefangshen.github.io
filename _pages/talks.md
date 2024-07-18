---
layout: page
title: Talks
permalink: /talks/
description: Upcoming and past talks.
nav: false
nav_order: 4
display_categories: [Upcoming, Past]
horizontal: false
---

<!-- pages/talks.md -->
<div class="talks">
<!-- add a section for featured talks -->
<a id="featured" href=".#featured">
  <h2 class="category">Featured</h2>
</a>
{% assign featured_talks = site.talks | where: "featured", true %}
{% assign featured_talks_srt = featured_talks | sort: "importance" %}
{% if page.horizontal %}
<div class="container">
  <div class="row row-cols-1 row-cols-md-2">
  {% for talk in featured_talks_srt %}
    {% include talks_horizontal.liquid %}
  {% endfor %}
  </div>
</div>
{% else %}
<div class="row row-cols-1 row-cols-md-3">
  {% for talk in featured_talks_srt %}
    {% include talks.liquid %}
  {% endfor %}
</div>
{% endif %}

<!-- categorized talks -->

{% if site.enable_talk_categories and page.display_categories %}

  <!-- Display categorized talks -->

{% for category in page.display_categories %}
<a id="{{ category }}" href=".#{{ category }}">

<h2 class="category">{{ category }}</h2>
</a>
{% assign categorized_talks = site.talks | where: "category", category %}
{% assign sorted_talks = categorized_talks | sort: "importance" %}

  <!-- Generate cards for each talk -->

{% if page.horizontal %}

  <div class="container">
    <div class="row row-cols-1 row-cols-md-2">
    {% for talk in sorted_talks %}
      {% include talks_horizontal.liquid %}
    {% endfor %}
    </div>
  </div>
  {% else %}
  <div class="row row-cols-1 row-cols-md-3">
    {% for talk in sorted_talks %}
      {% include talks.liquid %}
    {% endfor %}
  </div>
  {% endif %}
  {% endfor %}

{% else %}

<!-- Display talks without categories -->

{% assign sorted_talks = site.talks | sort: "importance" %}

  <!-- Generate cards for each talk -->

{% if page.horizontal %}

  <div class="container">
    <div class="row row-cols-1 row-cols-md-2">
    {% for talk in sorted_talks %}
      {% include talks_horizontal.liquid %}
    {% endfor %}
    </div>
  </div>
  {% else %}
  <div class="row row-cols-1 row-cols-md-3">
    {% for talk in sorted_talks %}
      {% include talks.liquid %}
    {% endfor %}
  </div>
  {% endif %}
{% endif %}
</div>
