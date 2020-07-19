---
layout: default
navigation-weight: 4
navigation-title: misc
title: Anand Deopurkar | miscelleneous
---

# Odds and ends

{% for thing in site.data.misc %}
* {{ thing.what }} {% endfor %}
