---
layout: default
title: Foundations of algebraic geometry, aka schemes 2020
no-navigation: true
---


# Introduction

We will learn the modern foundations of algebraic geometry: sheaves, schemes, and cohomology from [Ravi Vakil's book-in-progress](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf), online lecture videos, and weekly discussions.

We will hang out at [**schemes2020 on zulip**](https://schemes2020.zulipchat.com).


## Prerequisites

A solid foundation in topology and algebra (rings, fields, modules), and familiarity with some algebraic geometry or commutative algebra and the language of categories.
This means HD in Analysis 1, Algebra 1, Algebra 2, and either Algebra 3 or a Special Topics Course about algebraic geometry (Martin/Markus) or commutative algebra (Amnon).
**If you are taking this course for a grade, you must have these pre-requisites or my explicit permission.** But in the open spirit of Ravi's project, if you want to participate (audit) this course, you are welcome! 


## Assessement

1.  5 written assignments (50%)
2.  Two oral exams (50%)


## Written assignments

1.  (Due 14 Aug): 1.3.E, 1.4.E, 2.3.A, 2.3.I, 2.3.J, 2.4.E, 2.4.N, 2.4.O.
2.  (Due 04 Sep)
3.  (Due 25 Sep)
4.  (Due 09 Oct)
5.  (Due 30 Oct)


# More things to read or watch

-   [Ravi Vakil's pseudo-course website](https://math216.wordpress.com/agittoc-2020/)
-   [Richard Borcherd's lectures on schemes](https://www.youtube.com/watch?v=BX3jiLdehA4&list=PL8yHsr3EFj50Un2NpfPySgXctRQK7CLG-)


# Weekly reading, viewing, and doing

"Do" does not mean "write up and submit". 
A general convention in Ravi's book is that ⋆ indicates an advanced section that can be skipped on the first reading.


## Week 1

-   Read: [Chapter 1 Sections 1.1&#x2013;1.3.4 (localisation)](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf).
-   Watch: [AGITOC Pseudo-lecture 1](https://www.youtube.com/watch?v=WTEZjR5aNjw).
-   Do: 1.2.B, 1.3.A, 1.3.D,  1.3.E, 1.3.G, and ponder:
    1.  "A group is a category with 1 object and invertible morphisms." Love it or hate it?
    2.  Learn the language of universal properties and use it to phrase the constructions you already know. For example: kernels, cokernels, finite/infinite sums and products.
    3.  You may not have seen localisation before. That's OK. Try to digest as much as you can.
    4.  Show (preferably using the universal property) that the localisation $R\_f$ is isomorphic to $R[y]/(yf-1)$.
    5.  What is the geometric meaning of localisation? Can you use it to construct an example where $R \\neq 0$ but $R\_f = 0$?


## Week 2

-   Read: [Chapter 1 Section 1.4, 2.1, 2.2, 2.3](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf)
-   Skim: [Chapter 1 Section 1.3.6, 1.3.7, 1.5, 1.6](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf)
-   Watch: [AGITOC Pseudo-lecture 2.](https://www.youtube.com/watch?v=mqt1f8owKrU)
-   Do:
    1.  1.4.B (limits in `Sets`)
    2.  1.4.C ($\\mathbb Q$ as a colimit)
    3.  1.4.F (localisation as a colimit)
    4.  2.1.A (stalk is a local ring)
    5.  2.2.D (sheaves of functions)
    6.  2.2.E (constant sheaves)
    7.  2.2.F (morphisms form a sheaf)
    8.  2.3.C (sheaf hom)
    9.  2.3.I (kernel of sheaf maps is a sheaf)
    10. 2.3.J (but the cokernel may not be a sheaf)


## Week 3

-   Read: Two independent tracks
    -   (Sheaves continued): [2.4, 2.5, 2.6](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf)
    -   (Affine schemes): [3.1, 3.2 (up to 3.2.E, and especially Examples 1&#x2013;8)](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf).
-   Watch: [AGITTOC Pseudo-lecture 3](https://youtu.be/0lZFVGsYxj8)
-   Think:
    Come to terms with the new way of defining spaces from local models. The old mantra was "set + topology + local models + gluing maps". Now sheaves do the gluing for us, so the new mantra is "set + topology + sheaf of rings + local models".


## Week 4

-   Read:
    -   [Chapter 3 up to 3.6](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf) (Skip Noetherian-ness for now)
    -   Get comfortable with [2.5 (sheaves on a base)](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf) if you haven't already. We will very often work with a convenient base instead of the full topology.

-   Important points
    -   3.2.1:: How to "evaluate" a "function" at a "point".
    -   Examples 1&#x2013;8: Learn to draw!
    -   3.2.4, 3.2.5 (the Nullstellensatz):: This is a major theorem, whose proof goes beyond just unravelling the definitions. But it is more important to digest the statement and its consequences than to know the proof. It's also good to keep track of where we use this theorem.
    -   3.2.G, 3.2.Q:: Wrap your head around non-closed fields and other rings that seem "ungeometric."
    -   3.2.J/K, 3.4.I:: Pictures of quotient and localisation.
    -   3.2.10:: Induced maps on spectra.
    -   3.2.11, 3.2.12:: The fault of nilpotents
    -   3.4, 3.5:: Everything is important, but also fairly straightforward, especially if you have seen the Zariski topology.
    -   3.6.A:: Test your ability to go back and forth between algebra and geometry.
    -   3.6:: A lot of it should be deja-vu, but watch out for novelties&#x2013;non-closed/generic points (3.6.8, 3.6.10, 3.6.M, 3.6.N)
    -   3.6.J/K:: Explain why "classical points" (= maximal ideals) are enough for studying varieties (Hint: mostly because of the Nullstellensatz. Corollary: when we consider all primes, not just the maximals, Nullstellensatz becomes plays a less important role.)
-   Watch: [AGITTOC Pseudo-lecture 4](https://www.youtube.com/watch?v=q473BSN2_qE)


# More things to read or watch

-   [Ravi Vakil's pseudo-course website](https://math216.wordpress.com/agittoc-2020/)
-   [Richard Borcherd's lectures on schemes](https://www.youtube.com/watch?v=BX3jiLdehA4&list=PL8yHsr3EFj50Un2NpfPySgXctRQK7CLG-)

