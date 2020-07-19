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

I am an algebraic geometer with broader interests in algebra, representation theory, and number theory. Being an algebraic geometer means that I study [algebraic varieties](https://en.wikipedia.org/wiki/Algebraic_variety)&mdash;spaces of solutions of algebraic equations. I am interested in classical algebraic geometry, enumerative geometry, deformation theory, algebraic stacks, derived categories, among other things.

A common theme in much of my work is to understand varieties by studying the collection of all related varieties *at once*, using the remarkable feature that such a collection itself forms an algebraic variety (or something close to it), called a "moduli space". I have worked on moduli spaces of algebraic curves, surfaces, maps, vector bundles, and stability conditions.

{% assign currentdate = 'now' | date: '%s' | plus:0 %}
{% assign frontpage = site.data.frontpage | sort:'when' %}
{% for activity in frontpage %}
{% if activity.until %}{% assign expirydate = activity.until | date: '%s' | plus:0 %}{% else %}{% assign expirydate = currentdate %}{% endif %}
{% if expirydate >= currentdate %}
* {{ activity.what }} {% endif %}{% endfor %}
