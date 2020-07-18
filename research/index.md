---
layout: default
navigation-weight: 2
navigation-title: Research
title: Anand Deopurkar | Research 
---

<script type="text/javascript">
<!--
function toggle_visibility(id) {
	var e = document.getElementById(id);
	if(e.style.display == 'block')
		e.style.display = 'none';
	else
		e.style.display = 'block';
	}
//-->
</script>

<noscript>
<style type="text/css">
.summary{
	display: none;
}
	
.scriptonly{
  display: none;
}
</style>
</noscript>
	

## Papers and preprints

Click the title to view/hide the abstract. Different versions of a paper may be slightly different.
{: class="scriptonly" }

{% assign id = 1000 %}
{% for paper in site.data.papers %}{% assign id = id | plus: 1 %}
* {% if paper.abstract %}[{{ paper.title }}](#){: onclick='toggle_visibility(\'{{ id }}\'); return false;' }{% else %}{{ paper.title }}{% endif %}{% if paper.coauthors %} (with {{ paper.coauthors | join: ', ' }}){% endif %}.  
{% if paper.comment %} {{ paper.comment }}{% endif %}{% if paper.journal %} *{{ paper.journal }}*.{% endif %} {% for format in paper.formats %} [{{ format[0] }}]({{ format[1] }}) {% endfor %}  
{% if paper.abstract %}<span id="{{ id }}" class="summary">{{ paper.abstract }}</span>{% endif %}{% endfor %}

## Expository writing

{% assign id = 2000 %}
{% for paper in site.data.expository %}{% assign id = id | plus: 1 %}
* {% if paper.abstract %}[{{ paper.title }}](#){: onclick='toggle_visibility(\'{{ id }}\'); return false;' }{% else %}{{ paper.title }}{% endif %}{% if paper.coauthors %} (with {{ paper.coauthors | join: ', ' }}){% endif %}.  
{% if paper.comment %} {{ paper.comment }}{% endif %}{% if paper.journal %} *{{ paper.journal }}*.{% endif %} {% for format in paper.formats %} [{{ format[0] }}]({{ format[1] }}) {% endfor %}  
{% if paper.abstract %}<span id="{{ id }}" class="summary">{{ paper.abstract }}</span>{% endif %}{% endfor %}

## Notes and slides

{% for talk in site.data.talks %}  {% if talk.webnotes %}
* [{{ talk. what }}]({{ talk.webnotes }})  
  {{ talk.where }}, {{ talk.when }}
  {% if paper.comment %} ({{ paper.comment }}).{% endif %}{% endif %}{% endfor %}

* [Minor thesis at Harvard on Intersection Homology.](papers/anandrd_minor_thesis.pdf)
