---
layout: page
title: Textos
permalink: /txt/
---

<ul>
{% for page in site.pages %}
{% if page.collection == "txt" %}
  <li><a href="{{site.baseurl}}{{page.url}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
</ul>
