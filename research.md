---
layout: default
navigation-weight: 2
navigation-title: Research
title: Research
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
<!-- 

.summary{
	display: block;
}
	
.scriptonly{
  display: none;
}
-->
</style>
</noscript>
	

## Papers and preprints

Click on "abstract" to view/hide the abstract. \\
Different versions of the paper may be slightly different.
{: class="scriptonly" }

{% assign id = 1000 %}
{% for paper in site.data.papers %}{% assign id = id | plus: 1 %}
* {{ paper.title }}{% if paper.coauthors %} (with {{ paper.coauthors | join: ', ' }}){% endif %}.  
{% if paper.journal %} *{{ paper.journal }}*.{% endif %}  {% if paper.comment %} {{ paper.comment }}.{% endif %} {% for format in paper.formats %} [\[{{ format[0] }}\]]({{ format[1] }}) {% endfor %} {% if paper.abstract %} [\[abstract\]](#){: class="scriptonly" onclick='toggle_visibility(\'{{ id }}\'); return false;' }<span id="{{ id }}" class="summary">{{ paper.abstract }}</span>{% endif %}{% endfor %}


## Posters, slides, et cetera

* Slides from my talk at the SIAM Applied Algebraic Geometry Conference in Daejeon, Korea. [pdf](siam_talk.pdf)
* Poster on limits of plane quintics. [pdf](papers/quintics_poster.pdf)
* Poster on slopes of trigonal fibrations. [pdf](papers/slopes_poster.pdf)
* Poster on modular MMP for trigonal curves. [pdf](papers/trig_poster.pdf)

## Expository

* Minor thesis at Harvard on Intersection Homology. [pdf](papers/anandrd_minor_thesis.pdf)
