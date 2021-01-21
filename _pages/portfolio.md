---
layout: archive
title: "Portfolio"
permalink: /portfolio/
author_profile: true
---

## Preprints TEST
{% for post in site.preprints reversed %}
  {% include archive-single.html %}
{% endfor %}

## Publications
{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}

## Projects
{% for post in site.portfolio reversed %}
  {% include archive-single.html %}
{% endfor %}


