---
layout: page
title: Martí Cuquet
---

{% marginnote 'mn1' 'Com que aquest blog es produeix en una instal·lació on es
processen matemàtiques, els articles poden contenir traces de matemàtiques.' %}

Sense cap particular al qual referir-se des d'aquí, l'autor saluda
afectuosament el(s) seu(s) lector(s). —[P. C.](Cites)

<h1 class="content-listing-header sans">Articles</h1>
<ul class="blog-listing ">
  {% for post in site.posts %}      
    <li>
      <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>,
      <span class="smaller">{{ post.date | date: "%-d/%-m/%Y" }}</span>
    </li>
  {% endfor %}
</ul>
