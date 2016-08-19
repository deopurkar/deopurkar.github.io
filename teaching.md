---
layout: default
navigation-weight: 3
navigation-title: Teaching
title: Teaching
places: [UGA, Columbia, Harvard]
---

{% for place in page.places %}
## At {{ place }}
{% assign here = site.data.teaching | where:"where", place %}
{% for class in here %}
* {% if class.url %}[{{ class.what }}]({{ class.url }}){% else %}{{ class.what }}{% endif %}, {{ class.when }}{% if class.comment %}<br>{{ class.comment }}{% endif %}{% endfor %}
{% endfor %}
