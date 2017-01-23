---
layout: default
navigation-weight: 1
navigation-title: Home
---

<img src="/anandrd_board.jpg" alt="Photo of Anand Deopurkar" title="Near Bonn (2014)" id="photo">

Assistant Professor (Limited term)  
[Department of Mathematics](http://www.math.uga.edu/)  
[University of Georgia](http://www.uga.edu/)  
Office: Boyd 606  
Email: `deopurkar at uga dot edu`  
CV: [html](cv/index.html) [pdf](cv/cv.pdf)

## Research

For my papers and preprints, see my [research](research/) page.  

I am an algebraic geometer with broader interests in algebra, geometry, representation theory, and number theory. I study moduli spaces: moduli of curves, branched covers, surfaces, and so on. A lot of my research is about questions of a classical flavor, but the answers often involve modern machinery like deformation theory and stacks.  

Before coming to UGA, I was a Ritt Assistant Professor at [Columbia](http://math.columbia.edu/), and before that I was a graduate student of Joe Harris at [Harvard](http://math.harvard.edu/).  

Just after graduate school, I wrote a [rough non-technical explanation](interests/) of my doctoral research, which might interest or amuse you.

## Upcoming activities 

{% capture currenttime %}{{ site.time | date: '%F' }}{% endcapture %}
{% assign activities = site.data.activities | where_exp: 'activity', 'activity.when > currenttime' | sort: 'when' %}
<ul>
{% for activity in activities %}
<li>
{% unless activity.current == true %}
{{ currenttime }} {{ activity.when }}
{% if activity.display-when %}{{ activity.display-when }}{% else %}{{ activity.when | date: "%-d %b %Y" }}{% endif %}: {% endunless %} {{ activity.what | markdownify | strip | remove: '<p>' | remove: '</p>'}}{% if activity.where %}, {{ activity.where | remove: '<p>' | remove: '</p>'}}{% endif %}.
</li>
{% endfor %}
</ul>


## Teaching

This semester, I am teaching Math 2260 (Calculus 2 for scientists and engineers).  

Here are the notes from the course [moduli of curves](teaching/moduli/), which I taught at Columbia.  

For other courses taught in the past, see my [teaching](teaching/) page.
