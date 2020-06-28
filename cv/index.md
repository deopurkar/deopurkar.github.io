---
layout: default
title: Anand Deopurkar | CV
---

## Curriculum Vitae ([PDF](cv.pdf))

### Positions

* 2018--now, Lecturer, Australian National University, Canberra, Australia
* 2016--2017, Assistant Professor (Limited Term), University of Georgia, Athens, GA.
* 2012--2016, J. F. Ritt Assistant Professor, Columbia University, New York, NY.

### Education

* 2008--2012, Ph.D., Harvard University, Cambridge, MA. Advisor: Joseph Harris.
* 2004--2008, S.B., Massachusetts Institute of Technology (MIT), Cambridge, MA. (Mathematics with Computer Science).

### Publications and pre-prints

{% for paper in site.data.papers  %}  {% unless paper.omitcv  %}
* {{ paper.title }}{% if paper.coauthors %} (with {{ paper.coauthors | join: ', ' }}){% endif %}.  
{% if paper.journal %} *{{ paper.journal }}*.{% endif %}  {% if paper.comment %} {{ paper.comment }}{% endif %} {% for format in paper.formats %} [{{ format[0] }}]({{ format[1] }}){% endfor %}
{% endunless %}{% endfor %}

### Grants and awards

{% for award in site.data.awards %}  {% unless award.omitcv  %}
* {{ award.what }}{% if award.with %} (with {{ award.with | join: ', ' | markdownify | strip_html | strip }}){% endif %}, {{ award.when }}.{% if award.comment %} *{{ award.comment | markdownify | strip_html | strip }}*{% endif %}
{% endunless %}{% endfor %}

### Supervision
{% for student in site.data.supervision %}  {% unless student.omitcv  %}
* {{ student.who | markdownify | strip_html | strip }}, *{{ student.what | markdownify | strip_html | strip }}*, {{ student.where | markdownify | strip_html | strip }},  {{ student.when }}. {% if student.comment %} ({{ student.comment | markdownify | strip_html | strip }}). {% endif %}{% endunless %}{% endfor %}

### Teaching

#### At the Australian National University
{% assign here = site.data.classes | where:"where", "ANU" %}
{% for class in here %}  {% unless class.omitcv  %}
* {{ class.what | markdownify | strip_html | strip }}, {{ class.when }}.{% if class.comment %}*{{ class.comment | markdownify | strip_html | strip }}*{% endif %}
{% endunless %}{% endfor %}

#### At the University of Georgia
{% assign here = site.data.classes | where:"where", "UGA" %}
{% for class in here %}  {% unless class.omitcv  %}
* {{ class.what | markdownify | strip_html | strip }}, {{ class.when }}.{% if class.comment %}*{{ class.comment | markdownify | strip_html | strip }}*{% endif %}
{% endunless %}{% endfor %}

#### At Columbia University
{% assign here = site.data.classes | where:"where", "Columbia" %}
{% for class in here %}  {% unless class.omitcv  %}
* {{ class.what | markdownify | strip_html | strip}}, {{ class.when }}.{% if class.comment %} *{{ class.comment | markdownify | strip_html | strip }}*{% endif %}
{% endunless %}{% endfor %}

#### At Harvard University
{% assign here = site.data.classes | where:"where", "Harvard" %}
{% for class in here %}  {% unless class.omitcv  %}
* {{ class.what | markdownify | strip_html | strip}}, {{ class.when }}.{% if class.comment %} *{{ class.comment | markdownify | strip_html | strip }}*{% endif %}
{% endunless %}{% endfor %}

## Invited Talks and Presentations

#### In conferences or workshops
{% for talk in site.data.talks %}  {% unless talk.omitcv  %}{% if talk.type == "Conference" or talk.type == "Workshop" %}
* {{ talk.where }}, {{ talk.when }}. *{{ talk.what | markdownify | strip_html | strip }}*.{% if talk.comment %}  
  {{ talk.comment | markdownify | strip_html | strip }}{% endif %}
  {% endif %}{% endunless %}{% endfor %}

#### In seminars
{% for talk in site.data.talks %}  {% unless talk.omitcv  %}{% if talk.type == "Seminar" %}
* {{ talk.where }}, {{ talk.when }}. *{{ talk.what | markdownify | strip_html | strip }}*.{% if talk.comment %}  
  {{ talk.comment | markdownify | strip_html | strip }}{% endif %}
{% endif %}{% endunless %}{% endfor %}

## Service
{% for thing in site.data.service %}  {% unless thing.omitcv  %}
* {{ thing.what }}{% if thing.when %} {{ thing.when }}{% endif %}
{% endunless %}{% endfor %}
            
## References

* Joseph Harris, Harvard University
* Brendan Hassett, Brown University
* Johan de Jong, Columbia University
* Davesh Maulik, MIT
* Patrick Gallagher, Columbia University (Teaching)
