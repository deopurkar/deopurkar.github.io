---
layout: default
navigation-weight: 3
navigation-title: teaching
title: Anand Deopurkar | teaching
places: [ANU, UGA, Columbia, Harvard]
---

{% for place in page.places %}
# At {{ place }}
{% assign here = site.data.classes | where:"where", place %}
{% for class in here %}
* {% if class.url %}[{{ class.what }}]({{ class.url }}){% else %}{{ class.what }}{% endif %}, {{ class.when }}{% if class.comment %}<br>{{ class.comment }}{% endif %}{% endfor %}
{% endfor %}
