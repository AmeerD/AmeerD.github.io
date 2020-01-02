---
layout: archive
title: "Portfolio"
permalink: /portfolio/
author_profile: true
---

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

Publications
======

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}

Projects
======

{% for post in site.portfolio reversed %}
  {% include archive-single.html %}
{% endfor %}


