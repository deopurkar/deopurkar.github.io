---
layout: default
navigation-weight: 1
navigation-title: Home
title: Anand Deopurkar
---

<div class="intro">

![Photo of Anand Deopurkar in Banff, Canada](anandrd_banff.jpg){:#photo}

<div>

[Mathematical Sciences Institute](https://maths.anu.edu.au)  
[Australian National University](https://www.anu.edu.au/)  
Hanna Neumann Building   
61 2 6125 4628   
`anand.deopurkar@anu.edu.au`  
CV [html](cv/index.html) [pdf](cv/cv.pdf)

</div>

</div>

## Research

I am an algebraic geometer with broader interests in algebra, geometry, representation theory, and number theory. This means that I study algebraic varieties&mdash;spaces of solutions of algebraic equations. Instead of studying one algebraic variety in isolation, I study the collection of all related algebraic varieties at once, using the remarkable feature that such a collection itself forms an algebraic variety (often called a "moduli space").

I have worked on moduli spaces of algebraic curves, branched covers of curves, surfaces, vector bundles, and so on. 
For my papers and preprints, see my [research](research/) page.  

Just after graduate school, I wrote a [rough non-technical explanation](interests/) of my doctoral research, which might interest you.

{% assign currentdate = 'now' | date: '%s' | plus:0 %}
{% assign activities = site.data.activities | sort:'when' %}
{% assign currentactivities = "" | split: "," %}
{% for activity in activities %}
{% assign activitydate = activity.when | date: '%s' | plus:0 %}
{% if activitydate >= currentdate %} {% assign currentactivities = currentactivities | push:activity %} {% endif %}
{% endfor %}
{% if currentactivities.size > 0 %}
## Upcoming and current activities:

<ul>
{% for activity in currentactivities %}
<li> {% if activity.display-when %}{{ activity.display-when }}{% else %}{{ activity.when | date: "%-d %b %Y" }}{% endif %}: {{ activity.what | markdownify | strip | remove: '<p>' | remove: '</p>'}}{% if activity.where %}, {{ activity.where | remove: '<p>' | remove: '</p>'}}{% endif %}.</li>
{% endfor %}
</ul>
{% endif %}

## Teaching
Last semester, I taught Algebraic Geometry (Algebra 3).
See the [course website](teaching/ag) for more.

Here are some more courses that I have taught in the past.
* [A graduate course on algebraic curves and Riemann surfaces](teaching/8320)
* [Moduli of curves](teaching/moduli/)

For other courses taught in the past, see my [teaching](teaching/) page.

## Fun

I wrote a [mystery hunt style puzzle](puzzle.pdf).
