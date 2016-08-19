---
layout: default
navigation-weight: 3
navigation-title: Teaching
title: Teaching
---

## Teaching at UGA
{% for class in {{ site.data.teaching | where:"where","UGA" %}
* {% if class.url %}[{{ class.title }}]({{ class.url }}){% else %}{{ class.title }}{% endif %}, {{ class.time }}
  {% if class.comment %} \\ {{ class.comment }} {% endif %}
{% endfor %}

## Teaching at Columbia
{% for class in {{ site.data.teaching | where:"where","Columbia" %}
* {% if class.url %}[{{ class.title }}]({{ class.url }}){% else %}{{ class.title }}{% endif %}, {{ class.time }}
  {% if class.comment %} \\ {{ class.comment }} {% endif %}
{% endfor %}

## Teaching at Harvard
{% for class in {{ site.data.teaching | where:"where","Harvard" %}
* {% if class.url %}[{{ class.title }}]({{ class.url }}){% else %}{{ class.title }}{% endif %}, {{ class.time }}
  {% if class.comment %} \\ {{ class.comment }} {% endif %}
{% endfor %}

