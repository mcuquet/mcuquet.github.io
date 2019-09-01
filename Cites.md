---
layout: page
title: Cites
permalink: /Cites/
---

<div>
{% for cita in site.data.cites %}
<div class="cita">
{% if cita.cita %}<p class="cita-cita">{{cita.cita}}</p>{% endif %}
{% if cita.autor %}<p class="cita-autor">{{cita.autor}}</p>{% endif %}
</div>
{% endfor %}
</div>
