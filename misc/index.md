---
layout: default
navigation-weight: 4
navigation-title: Misc
title: Anand Deopurkar | Miscelleneous
---

{% for thing in site.data.misc %}
* {{ thing.what }}. {% endfor %}
