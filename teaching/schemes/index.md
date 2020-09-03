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

1.  Due 14 Aug: 1.3.E, 1.4.E, 2.3.A, 2.3.I, 2.3.J, 2.4.E, 2.4.N, 2.4.O.
2.  Due 04 Sep: 3.2.K, 3.2.M, 3.2.R, 3.2.S, 3.4.I, 3.6.C, 3.6.N, 4.3.F.
3.  Due 25 Sep
4.  Due 09 Oct
5.  Due 30 Oct


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
    -   Get comfortable wit [2.5 (sheaves on a base)](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf) if you haven't already. We will very often work with a convenient base instead of the full topology.
    -   [1.3.5 (tensor products), 1.3.6 (fiber products)](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf).
    -   Chapter 3 up to 3.6.
-   Important points
    -   3.2.1:: How to "evaluate" a "function" at a "point".
    -   Examples 1&#x2013;8: Learn to draw!
    -   3.2.4, 3.2.5 (the Nullstellensatz):: This is a major theorem, whose proof goes beyond just unravelling the definitions. But it is more important to digest the statement and its consequences than to know the proof. It's also good to keep track of where we use this theorem.
    -   3.2.G, 3.2.Q:: Wrap your head around non-closed fields and other rings that seem to have little to do with geometry.
    -   3.2.J/K, 3.4.I:: Pictures of quotient and localisation.
    -   3.2.10:: Induced maps on spectra.
    -   3.2.11, 3.2.12:: The fault of nilpotents
    -   3.4, 3.5:: Everything is important, but also fairly straightforward, especially if you have seen the Zariski topology.
    -   3.6.A:: Test your ability to go back and forth between algebra and geometry.
    -   3.6:: A lot of it should be deja-vu, but watch out for novelties&#x2013;non-closed/generic points (3.6.8, 3.6.10, 3.6.M, 3.6.N)
    -   3.6.J/K:: Explain why "classical points" (= maximal ideals) are enough for studying varieties (Hint: mostly because of the Nullstellensatz. Corollary: when we consider all primes, not just the maximals, Nullstellensatz becomes plays a less important role.)
-   Watch: [AGITTOC Pseudo-lecture 4](https://www.youtube.com/watch?v=q473BSN2_qE)


## Week 5

-   Read:
    -   Finish Chapter 3.
    -   Chapter 4: Up to 4.4
-   Important points:
    -   **4.1.2:** You must really understand the proof of this theorem, so I urge you to work out the module case (exercise 4.1.D) to make sure you have.
    -   **4.2:** The art of visualising nilpotents. This feels like pseudo-mathematics, but it is strangely enlightening.
    -   **4.3:** Definition of scheme &#x2013; no surprises here.
    -   **4.4:** Take your time to read these in detail.
-   Watch: [AGITTOC Pseudolecture 6](https://www.youtube.com/watch?v=qDN_hwEXH0k) and [first half of pseudolecture 7](https://www.youtube.com/watch?v=4KJwmiYHVk4)
    It is becoming hard to match the pseudo-lectures exactly to our readings. What we did in week 4 gets covered in pseudolecture 4, 5, and the beginning of 6. This is because I am skipping / going fast over things you have already seen in your first algebraic geometry course (like Noetherian topological spaces, irreducibility, Hilbert basis theorem). So feel free to jump/skip around in the lectures.


## Week 6

-   **Read:** [Section 4.5](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf)
-   **Important points:** -   When you learn algebraic geometry, it is easy to see that affine schemes are important&#x2014;they are the building blocks of everything! It is less clear why projective schemes are important.        
        But projective schemes are everywhere! Almost everything you will see in your life as an algebraic geometer will be (quasi)-projective. Unfortunately, you have to take this statement on faith (right now).
    -   **4.5.A:** DIY projective scheme. This is worth doing just to convince yourself that you could build a projective scheme yourself by hand.
        The \\({\\rm Proj}\\) construction is a slick shortcut.
    -   **4.5.4:** Why should projective schemes have to do anything with graded rings? Ravi talks a bit about this in the pseudo-lectures.
        -   **One answer:** if you want equations to make sense in projective space, they have to be homogeneous. So the notion of degree comes in fundamentally.
        -   **A different answer:** A projective scheme is an affine scheme (minus some "irrelevant points") modulo the action of the multiplicative group \\(\\mathbb G\_m\\).
            A graded ring is the same as a ring along with the action of the multiplicative group \\(\\mathbb G\_m\\) (why is this?).
            So graded rings naturally come in when we consider affine schemes with a \\(\\mathbb G\_m\\) action ("up to scaling").
    -   **4.5.7:** This section looks short, but it will take time to digest!
    -   **4.5.O, 4.5.P:** If you can do these, you have a good understanding of the projective space.
-   **Watch:** [AGITTOC Pseudolecture 8](https://www.youtube.com/watch?v=JZ01Akw52z8)


# More things to read or watch

-   [Ravi Vakil's pseudo-course website](https://math216.wordpress.com/agittoc-2020/)
-   [Richard Borcherd's lectures on schemes](https://www.youtube.com/watch?v=BX3jiLdehA4&list=PL8yHsr3EFj50Un2NpfPySgXctRQK7CLG-)
-   [Why are points of a scheme the prime ideals](pointsareprimes.pdf)

