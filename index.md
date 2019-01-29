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

Just after graduate school, I wrote a [rough non-technical explanation](interests/) of my doctoral research, which might interest or amuse you.

## Upcoming and current activities

{% capture currenttime %}{{ site.time | date: '%s' }}{% endcapture %}
{% assign activities = site.data.activities | sort: 'when' %}
<ul>
{% for activity in activities %}
{% capture activitytime %}{{ activity.when | date: '%s' }}{% endcapture %}
{% if activitytime >= currenttime %}
<li> {% if activity.display-when %}{{ activity.display-when }}{% else %}{{ activity.when | date: "%-d %b %Y" }}{% endif %}: {{ activity.what | markdownify | strip | remove: '<p>' | remove: '</p>'}}{% if activity.where %}, {{ activity.where | remove: '<p>' | remove: '</p>'}}{% endif %}.</li>
{% endif %}
{% endfor %}
</ul>

## Teaching
This summer (southern hemisphere), I am co-running a reading course on "Elliptic curves and modular forms" by Neil Koblitz with [James Tener](https://tener.cc). Here are the notes of some of the other advanced classes I have taught.

* [A graduate course on algebraic curves and Riemann surfaces](teaching/8320)
* [Moduli of curves](teaching/moduli/)

For other courses taught in the past, see my [teaching](teaching/) page.

## Fun

I wrote a [mystery hunt style puzzle](puzzle.pdf).
