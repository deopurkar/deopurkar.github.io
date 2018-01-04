---
layout: default
title: Today I Learned
no-navigation: True
---

<script type="text/javascript" async src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.2/MathJax.js?config=TeX-MML-AM_CHTML">
</script>

{% for post in site.posts %}
## [{{ post.title}}]({{ post.url }})
{{ post.excerpt | strip_html }} [more...]({{ post.url }})

Tags: {{ post.tags }}.
Posted on {{ post.date | date_to_long_string }}.
{: .minifooter}
{% endfor %}
