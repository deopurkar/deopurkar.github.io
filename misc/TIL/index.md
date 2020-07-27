---
layout: post
title: Today I Learned
---

{% for post in site.posts %}
# [{{ post.title }}]({{ post.url }}) 
{{ post.excerpt | strip_html }} [more...]({{ post.url }})

Tags: {{ post.tags }}.
Posted on {{ post.date | date_to_long_string }}.
{% endfor %}
