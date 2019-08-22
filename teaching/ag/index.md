---
layout: default
title: Algebra 3 (Algebraic geometry)
no-navigation: true
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

<style type="text/css">
#surface {
	height: 200px;
	margin-right:3em;
	border-radius:10px;
}
</style>

<div class="intro">
<div>
Welcome to Algebra 3!
This year, algebra 3 will be algebraic geometry.
We will study the geometry of subsets of the affine or projective space defined by the vanishing of polynomial equations, or in other words, (quasi)-projective varieties.
</div>

{% raw %}
<script type="text/javascript">
		var images = ['calypsortp.jpg', 'helixrtp.jpg', 'seepferdchenrtp.jpg', 'calyx-korrektur2000.jpg', 'herzrtp.jpg', 'solitudertp.jpg', 'daisyrtp.jpg', 'himmelhoellertp.jpg', 'tanzrtp.jpg', 'diabolortp.jpg', 'kolibrirtp.jpg', 'taube-korrektur2000.jpg', 'dingdongrtp.jpg', 'kreiselrtp.jpg', 'tuellertp.jpg', 'distelmetallicrtp.jpg', 'limaortp.jpg', 'visavisrtp.jpg', 'dullortp.jpg', 'miaurtp.jpg', 'zeckrtp.jpg', 'eistuetertp.jpg', 'nepalirtp.jpg', 'zitrus_rtp_0.jpg']
	document.write('<img id="surface" src="images/' + images[Math.floor(Math.random() * images.length)] + '" alt="An algebraic surface">')
</script>
{% endraw %}
</div>

## [Homework &plusmn;](#){:  onclick="toggle_visibility('hw'); return false;" }
<div id="hw" style="display: block;" >
- [Homework 4. Due 5pm, Friday, August 23](hw04.pdf) ([submit](https://wattlecourses.anu.edu.au/mod/assign/view.php?id=1738780){:target="_blank"})   
  *Here is an animated [pencil of conics](pencil.gif).*  
- [Homework 3. Due 5pm, Friday, August 16](hw03.pdf) ([submit](https://wattlecourses.anu.edu.au/mod/assign/view.php?id=1738779){:target="_blank"})   
- [Homework 2. Due 5pm, Friday, August 9](hw02.pdf) ([submit](https://wattlecourses.anu.edu.au/mod/assign/view.php?id=1738778){:target="_blank"})   
- [Homework 1. Due 5pm, Friday, August 2.](hw01.pdf)
</div>

## [Wattle links (ANU only) &plusmn;](#){: onclick="toggle_visibility('wat'); return false;" }
<div id="wat" style="display: block;">
* [Echo 360 recordings](https://wattlecourses.anu.edu.au/mod/lti/view.php?id=1738513){:target="_blank"}
* [Gradebook](https://wattlecourses.anu.edu.au/grade/report/index.php?id=28539){:target="_blank"}
* [Question and answer forum](https://wattlecourses.anu.edu.au/mod/forum/view.php?id=1738507){:target="_blank"}
</div>

## [Outline &plusmn;](#){:  onclick="toggle_visibility('out'); return false;" }

<div id="out" style="display: block;">
Here is a preliminary outline of the course. It is undergoing changes as the class progresses, so the later weeks may not be accurate.
I will also upload my lecture notes and the workshop handouts here.

* Week 1: [Lecture Notes 1](AGWeek01.pdf)  
  What is algebraic geometry?, 
  Affine space, closed (algebraic) subsets of affine space. 
  Ideals, Hilbert's basis theorem, Zariski topology.
  Examples and non-examples.
  (Gathmann Chapter 0, Shafarevich Section 1.2.1)
      
* Week 2: [Workshop 1](AGWorkshop01.pdf), [Lecture Notes 2](AGWeek02.pdf)   
  The ring of regular functions.
  The ideal associated to a subset of affine space.
  The nullstellensatz and consequences.
  (Shafarevich 1.2.2, Shafarevich A.9, Gathmann 1.2)

* Week 3: [Workshop 2](AGWorkshop02.pdf), [Lecture Notes 3](AGWeek03.pdf)   
  Regular maps between affine algebraic sets, isomorphisms.
  Category of affine algebraic sets = Category of nilpotent-free, finitely generated algebras.
  Quasi-affine varieties.
  (Shafarevich 1.2.3, [Danilov](Danilov-quasi-affine.pdf))

* Week 4: [Workshop 3](AGWorkshop03.pdf), [Lecture Notes 4](AGWeek04.pdf)   
  Definition of abstract algebraic varieties.
  Projective and quasi-projective varieties.
  (Shafarevich 1.4.1, 1.4.2, [Danilov](Danilov-varieties.pdf))

* Week 5 [Workshop 4](AGWorkshop04.pdf), [Lecture Notes 5](AGWeek05.pdf)  
  Regular functions and regular maps on quasi-projective varieties. Veronese and Segre embeddings.
  (Shafarevich 1.4.1, 1.4.2, 1.4.4, [Danilov](Danilov-varieties.pdf) [Harris](Harris-Veronese_and_Segre.pdf)).
  [Math Stackexchange answer](https://math.stackexchange.com/questions/891109/factoring-homogeneous-polynomials-in-two-variables) explaining how homogeneous polynomials in X, Y of degree d factor into d homogeneous linear factors. As a result, they have at most d zeros on P<sup>1</sup>.

* Week 6
  Irreducibility, irreducible components.
  Rational functions, domain of definition, birational maps.
  (Shafarevich 1.3.2, 1.3.3)

* Week 7:
  Examples. The Grassmannian.
  (Shafarevich 1.4.1, [Harris](Harris-Grassmannian.pdf)), [Bullock](Bullock-Grassmannian.pdf)

* Week 8:
  Products. Veronese and Segre embedding.

* Week 9:
   The closed image property.
   Finite maps, Noether normalization.
   (Shafarevich 1.5.2, 1.5.3, 1.5.4)

* Week 10:
   Dimension theory

* Week 11:
   Local ring at a point.
   Tangent spaces, singularities.

* Week 12:
   ???
</div>

## [Prerequisites &plusmn;](#){:  onclick="toggle_visibility('prereq'); return false;" }
<div id="prereq" style="display: block;" >
Algebra 1 and algebra 2.
Some knowledge of commutative algebra will help, but is not required.
</div>

## [References &plusmn;](#){:  onclick="toggle_visibility('ref'); return false;" }
<div id="ref" style="display: block;">
1. [*Basic Algebraic Geometry, Part I*](https://link.springer.com/book/10.1007/978-3-642-37956-7) by I. Shafarevich.  
2. The [online notes](https://www.mathematik.uni-kl.de/~gathmann/class/alggeom-2002/alggeom-2002.pdf) by A. Gathmann.  
3. [*Algebraic varieties: Basic Notions*](https://link.springer.com/chapter/10.1007/978-3-642-57878-6_6) by V. Danilov. 
</div>

## [Lectures and workshops &plusmn;](#){:  onclick="toggle_visibility('lec'); return false;" }
<div id="lec" style="display: block;">
1. Lecture on Wednesday, 12:00 to 13:00 in Hancock 2.27  
2. Lecture on Thursday, 9:00 to 10:00 in Hayden Allen G051  
3. Lecture on Friday, 12:00 to 13:00 in Hancock 2.27  
4. Workshop on Monday, 11:00 to 12:00 in Hanna Neumann 1.58 (starting week 2).

I will have office hours on Wednesday from 1 to 2, on Thusday from 10 to 11, and at other times by appointment.
</div>

## [Assessment &plusmn;](#){: onclick="toggle_visibility('assess'); return false;" }
<div id="assess" style="display: block;">
There will be weekly homework assignments, a mid-semester exam, and a final exam.	The exams will be worth 20% each (total 40%) and the assignments will be worth 6.66% each (total 60%). Submit your assignments through wattle by following the "submit" link as a single pdf file (handwritten and scanned or typed). Of the 10 assignments, I will drop the lowest score.
</div>

## [Policies &plusmn;](#){: onclick="toggle_visibility('poli'); return false;" }
<div id="poli" style="display: block;">
### Collaboration

You are allowed, even encouraged, to work with others on assignments, but you must write up your solutions *on your own*. In other words, you *may not* copy someone else's write-up and you *may not* write your solutions side by side someone else. On your submission, you must write the names of your collaborators. This is a matter of academic honesty; it will not affect your marks. 

### Late assignments

I will grant extensions only for medical emergencies with a medical certificate. In accordance with the ANU policy, late assignments will incur a 5% penalty per working day. I will not accept any assignments later than a week. To mitigate the strict late policy, I will drop the lowest assignment score.
</div>

## Picture Credits

The images of the surfaces displayed above were [created by Herwig Hauser using `surfer`](https://imaginary.org/gallery/herwig-hauser-classic).
