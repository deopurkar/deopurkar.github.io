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
3.  Due 02 Oct: 4.3.C, 4.5.I, 5.1.E, 5.1.I, 5.2.F, 6.3.H, 6.3.M, 8.1.J (b,d).
4.  Due 09 Oct
5.  Due 30 Oct


# Midterm exam

The midterm exam will be an oral exam conducted by me and James Borger in the week of September 21. It will be about 45 minutes long. I have prepared [a list of questions for the exam](midterm1.pdf). We will ask questions from this list, small variations on them, and follow up questions based on your responses.


# Weekly reading, viewing, and doing

"Do" does not mean "write up and submit". 
A general convention in Ravi's book is that ⋆ indicates an advanced section that can be skipped on the first reading.


## Week 8

-   **Read**: [Chapter 9](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf)
-   **Watch**: [AGITTOC Pseudolecture 11](https://www.youtube.com/watch?v=RuFBNbR1XN0)
-   **Important points**
    -   You should spend most of your time on 9.2 and 9.3.
    -   Do not get bogged down by the proof of the existence of fibered products (Theorem 9.1.1). The important points to understand are:
        -   Fibered products of affines (9.1.B).
        -   The general case is by gluing the affine case (first paragraph of the proof of 9.1.1).
    -   Skip 9.1.6, 9.3.7, 9.4, and 9.5.
    -   Go lightly over 9.3.6, and read 9.7 only if you have time.
    -   Most of section 9.6 should feel familiar.


## Week 7

-   **Read:** -   Sections 5.1 and 5.2
    -   Sections 6.1, 6.2, 6.3,
    -   Sections 7.1, 8.1

-   **Important points:** -   **5.1, 5.2:** Learn the adjectives: irreducible, Noetherian, reduced, integral. Do 5.2.F (integral = reduced + irreducible).
    -   **6.1, 6.2, 6.3:** This seems long, but it's mostly discursive, trying to motivate the right definition of a morphism. The upshot is 6.2.2, which is more important than the technical definition in 6.3. Do 6.3.C to nail down your understanding. Highly recommended - 6.3.E, 6.3.F. Go lightly over 6.3.9 and later.
    -   **7.1 (open embeddings):** These are uncomplicated, so this should be easy.
    -   **8.1 (closed embeddings):** There is an initial learning curve here (but eventually, they become as easy as open embeddings). Learn about the ideal sheaf. Recommended: 8.1.C, 8.1.D, 8.1.E, 8.1.J.


### Discussion

1.  Thursday

    1.  6.3.B
        For affines, morphism of locally ringed spaces = induced by a ring map
    2.  6.3.A
        Morphisms glue
    3.  6.3.C
        Morphism is locally induced by ring maps
    4.  6.3.F
        Morphism to Spec A
    5.  6.3.I
        Spec Z is final
    6.  6.3.H
        Structure map of Proj
    7.  6.3.J
        Map from a point
    8.  6.3.M
        (Some) morphisms to projective space

2.  Friday

    A<sup>n</sup> = Spec Z[x<sub>1</sub>,&#x2026;, x<sub>n</sub>]. P<sup>n</sup> = Proj Z[X<sub>0</sub>, &#x2026;, X<sub>n</sub>]
    
    1.  A different take on 6.3.M
        -   Construct a morphism A<sup>n+1</sup> - {0} &rarr; P<sup>n</sup>.
        -   Show that a morphism X &rarr; A<sup>n+1</sup>-{0} is the same as (n+1) global sections f<sub>0</sub>, &hellip;, f<sub>n</sub> of O<sub>X</sub> that do not have a common zero.
        -   Conclude that such (f<sub>i</sub>) give a map X &rarr; P<sup>n</sup>.
        -   You now see why all maps X &rarr; P<sup>n</sup> may not arise in this way.
    
    2.  Make sense of the map P<sup>1</sup> &rarr; P<sup>2</sup> "defined by [X<sup>2</sup>:XY:Y<sup>2</sup>]"
    
    3.  8.1.D (Use 7.3.4 - being affine is affine local on the target).
        Closed embeddings = maps which locally Spec(A/I) &rarr; Spec A
    
    4.  Let p be a point of X.
        Show that the natural map Spec k(p) &rarr; X is a closed embedding if and only if p is a closed point.
    
    5.  Show that the map in (2) "[X<sup>2</sup>:XY:Y<sup>2</sup>]" is a closed embedding.
    
    6.  Generalise (2) for the "rational normal curve": P<sup>1</sup> &rarr; P<sup>n</sup> given by [X<sup>n</sup>:X<sup>n-1</sup>Y:&ctdot;:Y<sup>n</sup>].
    
    7.  Describe the sheaf of ideals in (4) if p is a closed point.
    
    8.  Read 8.1.H and be convinced that this should work.
    
    9.  Let S be a graded ring and I &sub; S a homogeneous ideal.
        Construct a map Proj(S/I) &rarr; Proj(S) and show that it is a closed embedding.
    
    10. Is the map Spec C[t] &rarr; Spec C[x,y] "given by (t<sup>2</sup>,t<sup>3</sup>)" a closed embedding? A homeomorphism onto its image?


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


### Discussions

1.  Thursday

    1.  The basics
    
        Let \\(A = A\_0 \\oplus A\_1 \\oplus A\_2 \\oplus \\cdots \\) be a graded ring.
        
        1.  What is the set \\({\\rm Proj}\\ A\\)?
        2.  Describe a base for the topology on \\({\\rm Proj}\\ A\\).
        3.  Describe the structure sheaf of \\({\\rm Proj}\\ A\\) by describing its value on the basic open sets.
        4.  Why is this a scheme?
        5.  Write a finite affine cover (under suitable conditions).
    
    2.  Examples
    
        Let \\(k\\) be an algebraically closed field.
        
        1.  Let \\(P = {\\rm Proj}\\ k[X,Y,Z]\\), variables in degree 1.
            1.  What is your affine cover in this case (from (5))?
            2.  What are the closed points of \\(P\\)? Interpret them as lines in \\(k^{\\oplus 3}\\).
        
        2.  Let \\(P = {\\rm Proj}\\ k[t][X,Y,Z]\\), where \\(t\\) has degree 0 and \\(X,Y,Z\\) have degree 1.
            Repeat (1) and (2). You will have to modify the interpretation in (2).
            *Hint: There is a map \\(P \\to {\\rm Spec}\\ k[t]\\) and it maps closed points to closed points.*
        
        3.  **Only if you have time**
            Let \\(S = {\\rm Proj}\\ k[u,v][X,Y]/(Xv-Yu)\\), where \\(u,v\\) have degree 0 and \\(X,Y\\) have degree 1.
            Repeat (1) and (2). Describe the map \\(S \\to {\\rm Spec}\\ k[u,v]\\).

2.  Friday

    1.  Playing with Proj
    
        Let \\(k\\) be an algebraically closed field. 
        
        -   **Trivial base ring and no equations:** Let \\(A = k[X\_0, \\dots, X\_n]\\).
            Show that closed points of \\({\\rm Proj}\\ A\\) = Lines in \\(k^{n+1}\\) = \\((n+1)\\)-tuples of homogeneous coordinates \\([x\_0:\\dots:x\_n]\\) where \\(x\_i \\in k\\) are not all zero.
        
        -   **Equations:** Let \\(A = k[X\_0, \\dots, X\_n]/(F\_1, \\dots, F\_m)\\).
            Show that closed points of \\({\\rm Proj}\\ A\\) = \\((n+1)\\)-tuples of homogeneous coordinates satisfying all the equations \\(F\_i = 0\\).
        
        -   **Non-trivial base rings:** Let \\(A = A\_0 \\oplus A\_1 \\oplus \\cdots \\).
            -   Construct a map \\(\\pi \\colon {\\rm Proj}\\ A \\to {\\rm Spec}\\ A\_0\\).
                For now, describe the map on points. It can be upgraded to a map of schemes.
                
                Via \\({\\pi}\\), we can think of \\({\\rm Proj}\\ A\\) as fibered over \\({\\rm Spec}\\ A\_0\\), and try to understand the fibers.
            
            -   Suppose \\(A\\) is finitely generated over \\(A\_0\\). Then \\(\\pi\\) will turn out to be a proper map. Proper maps send closed sets to closed sets. In particular, they send closed points to closed points. So closed points of \\({\\rm Proj} A\\) are fibered over closed points of \\({\\rm Spec}\\ A\_0\\).
                
                Take \\(A = k[t][X\_0, \\dots, X\_n]\\), where \\(t\\) has degree 0 and the \\(X\_i\\) have degree 1.
                
                -   Show that the fiber of \\({\\rm Proj}\\ A\\) over a closed point of \\({\\rm Spec}\\ k[t]\\) is a copy of \\({\\rm Proj}\\ k[X\_0, \\dots, X\_n]\\). For now, show this just for the sets of closed points, but it can be upgraded to a statement about schemes.
        
        -   **Non-trivial base rings and equations:** Let \\(A = k[s,t][X,Y,Z]/(X^2+sY^2+tZ^2)\\), where \\(s,t\\) have degree 0 and \\(X,Y,Z\\) have degree 1.
            -   Recall the map \\(\\pi \\colon {\\rm Proj}\\ A \\to {\\rm Spec}\\ k[s,t]\\). What is its fiber over the point \\((s-a, t-b)\\)?
            
            -   We say that the map \\(\\pi\\) describes a family of projective \\(k\\)-schemes (in this case conics in \\(\\mathbb P^2\_k\\)) parametrized by \\({\\rm Spec}\\ k[s,t]\\). Do you see what this means?
            
            -   **Slogan:** \\({\\rm Proj\\ } A\\) is a family of projective schemes parametrized by \\({\\rm Spec}\\ A\_0\\).
        
        -   **Another non-trivial base ring and equations:** Let \\(A = k[u,v][X,Y]/(Xv-Yu)\\).
            -   Describe the closed points of \\({\\rm Proj}\\ A\\) using the map \\(\\pi\\) to \\({\\rm Spec}\\ k[u,v]\\) (be careful!)
            -   Describe the affine charts of \\({\\rm Proj}\\ A\\).
            -   Is \\({\\rm Proj}\\ A\\) reducible or irreducible? Is it smooth or singular?
            -   Try to draw a picture of \\(\\pi \\colon {\\rm Proj}\\ A \\to \\mathbb A^2\\).
            -   Can you write the map \\({\\rm Proj}\\ A \\to \\mathbb A^2\\) on the affine charts?


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


### Discussion

1.  Poll

    Let $X = {\\rm Spec}\\ {\\mathbb C} \\sqcup {\\rm Spec}\\ {\\mathbb C} \\sqcup {\\rm Spec}\\ {\\mathbb C} \\sqcup \\cdots$ (infinite disjoint union).
    Let $R = \\mathbb C \\times \\mathbb C \\times \\mathbb C \\times \\cdots$ (infinite product).
    
    /poll 
    X is an affine scheme; in fact X = Spec R.
    X is an affine scheme, but it is not Spec R.
    X is not an affine scheme.

2.  Thursday

    1.  Suppose \\(g \\in A\\) does not vanish on the open set \\({\\rm spec}\\ A\_f\\) contained in ${\\rm spec}\\ A$. 
        What can you say about \\(g\\)? Must it be a power of \\(f\\)?
    2.  4.1.A: Show that \\(A\_f \\to O(D(f))\\) is an isomorphism.
    3.  We know that elements of \\(A\\) give functions on ${\\rm spec}\\ A$, and functions form a sheaf.
        Then why is there work involved in showing that $O$ satisfies the sheaf axioms?
    4.  Prove the base-gluability of the structure sheaf.
    5.  4.3.F: Stalks of the structure sheaf.
    6.  4.1.D: Work through the construction of $\\widehat M$.
    7.  4.1.5: Pitfall of a slick definition of $O(U)$.
        What is the correct description of $O(U)$?
    8.  Draw
        -   ${\\rm Spec}\\ {\\mathbb C}[t]/t^2$
        -   ${\\rm Spec}\\ {\\mathbb C}[t]/t^3$
        -   ${\\rm Spec}\\ {\\mathbb C}[x,y]/(x^2,xy,y^2)$
        -   ${\\rm Spec}\\ {\\mathbb C}[x,y]/(xy,y^2)$
        -   ${\\rm Spec}\\ {\\mathbb Z}/(12)$

3.  Friday

    1.  **from yesterday**
        4.1.5: Pitfall of a slick definition of $O(U)$.
        What is the correct description of $O(U)$?
    2.  **enlightening** but **confusing**
        4.3.A: Isomorphisms of affine schemes = isomorphisms of rings
    3.  **easy**
        4.3.B: Distinguished open subschemes
        4.3.C: Open subschemes
        Think about 4.3.4 &#x2013; closed subschemes
    4.  **easy**
        4.3.G: Functions on locally ringed spaces
    5.  **easy**
        4.4.A: Gluing schemes
    6.  4.4.B/C: Lines and planes with doubled origins.
    7.  **do once in life**
        4.4.D: Charts of the projective space
    8.  4.4.F: Closed points of the projective space
        More generally, let \\(A\\) be a finitely generated \\(k\\)-algebra.
        What are the closed points of \\(\\mathbb P^n\_A\\)?
    9.  Example 4.4.12.
    10. **chinese remainder theorem**
        Example 4.4.11.


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


### Discussion

1.  Thursday

    1.  3.2.H (Points of ${\\mathbb Q}[x,y]$)
    2.  3.2.J (Points of a quotient)
    3.  3.2.K (Points of a localisation)
    4.  3.2.L (Thinking about localisation geometrically)
    5.  Draw pictures of the maps
        -   ${\\rm spec}\\ \\mathbb Q \\to {\\rm spec}\\ \\mathbb Z$
        -   ${\\rm spec}\\ k[t]\_{(t)} \\to {\\rm spec}\\ k[t]$
        -   ${\\rm spec}\\ \\mathbb C[x] \\to {\\rm spec}\\ \\mathbb R[x]$
        -   ${\\rm spec}\\ k[t] \\to {\\rm spec}\\ k[x,y]/xy$ induced by $x \\mapsto 0, y \\mapsto t$.
        -   ${\\rm spec}\\ k[x,y]/xy \\to {\\rm spec}\\ k[t]$ induced by $t \\mapsto x+y$.
        -   ${\\rm spec}\\ k \\to {\\rm spec}\\ k[t]$ induced by $t \\mapsto a$ for some $a \\in k$.
        -   ${\\rm spec}\\ \\mathbb C \\to {\\rm spec}\\ \\mathbb Q[t]$ induced by $t \\mapsto \\sqrt{2}$.
    6.  Let $A$ and $B$ be finitely generated $k$ algebras, and $f \\colon A \\to B$ a map of $k$ algebras.
        -   Show that $f$ sends a closed point (maximal ideal) of ${\\rm spec}\\ B$ to a closed point of ${\\rm spec}\\ A$.
        -   Show that $f$ may not send closed points to closed points, in general.
    7.  Let $X = \\mathbb A^n\_{k}$.
        What are the residue fields of the closed points (max ideals) of $X$ if $k = \\mathbb C$? If $k = \\mathbb Q$?
    8.  3.2.R (Nilpotents and spec)
    9.  3.2.S (Nilradical = intersection of prime ideals).
        -   When is $R\_f = 0$? (Only when $f$ is a nilpotent.)
        -   Aside: 
            For some rings ("Jacobson rings"), nilradical = intersection of all maximal ideals. This means that if $f$ and $g$ take the same value at every closed point, then $f-g$ is nilpotent. Fields are Jacobson (trivially) $\\mathbb Z$ is Jacobson (easy), finitely generated algebras over Jacobson rings are Jacobson. Can you come up with an example of a non-Jacobson ring (hint: its ${\\rm spec}$ must have "few" closed points).

2.  Friday

    1.  **easy** 
        3.6.I (closed points = maximal ideals)
        Related: What is the closure of a point $p$?
    2.  **easy**
        3.4.I (${\\rm spec}\\ A/I$ is closed in ${\\rm spec}\\ A$, and ${\\rm spec}\\ A\_f$ is open.)
    3.  **important**
        3.5.A (distinguished opens form a base)
    4.  3.5.B/C, 3.6.G (coverings by distinguished opens and (quasi)-compactness)
    5.  3.2.S (Nilradical = intersection of prime ideals). &#x2013; skip proof at first
        -   When is $R\_f = 0$? (only when $f$ is a nilpotent.)
        -   Aside: 
            For some rings ("Jacobson rings"), nilradical = intersection of all maximal ideals. This means that if $f$ and $g$ take the same value at every closed point, then $f-g$ is nilpotent. Fields are Jacobson (trivially) $\\mathbb Z$ is Jacobson (easy), finitely generated algebras over Jacobson rings are Jacobson. Can you come up with an example of a non-Jacobson ring (hint: its ${\\rm spec}$ must have "few" closed points).
    6.  3.4.F (radical of I = intersection of primes containing I)
        -   How do you intepret this statement geometrically?
    7.  3.4.5 (nilpotents and spec)
    8.  3.4.J (when does $f$ vanish on $V(I)$?)
    9.  3.5.E (inclusions among the distinguished opens)
    10. **I(.) and V(.) are mutual inverses**
        Prove Theorem 3.7.1


## Week 3

-   Read: Two independent tracks
    -   (Sheaves continued): [2.4, 2.5, 2.6](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf)
    -   (Affine schemes): [3.1, 3.2 (up to 3.2.E, and especially Examples 1&#x2013;8)](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf).
-   Watch: [AGITTOC Pseudo-lecture 3](https://youtu.be/0lZFVGsYxj8)
-   Think:
    Come to terms with the new way of defining spaces from local models. The old mantra was "set + topology + local models + gluing maps". Now sheaves do the gluing for us, so the new mantra is "set + topology + sheaf of rings + local models".


### Discussion

1.  Polls

    Let $X = \\mathbb C^2$. Denote by $O\_X^\*$ the sheaf of maps to $\\mathbb C^\* = \\mathbb C - \\{0\\}$.
    Let $m\_n \\colon O\_X^\* \\to O\_X^\*$ be the map $f \\mapsto f^n$.
    
    /poll The map $m\_n$ above
    is a surjection of sheaves and also a surjection on all open sets.
    is a surjection of sheaves but not a surjection on all open sets.
    not a surjection of sheaves.

2.  Thursday

    1.  Let $f \\colon A \\to B$ be a map of sheaves.
        Show using universal properties that the sheafification of the pre-sheaf cokernel of $f$ is the cokernel of $f$ in the category of sheaves.
    2.  2.4.C (for sheaves, compatible germs = section)
    3.  2.4.G (sheafification is unique up to a unique iso)
    4.  2.4.I,J,K (verifying the construction of sheafification)
    5.  2.4.M (sheafification does not change stalks)
    6.  2.4.P (exponential map)
    7.  2.5.B, C (sheaves on a base)
    8.  2.5.D (gluing sheaves)
    9.  2.6.D (exactness = exactness of stalks)
    10. 2.6.F (left exactness of global sections)
    
    1.  Main takeaways
    
        -   Sheaves of Ab groups forms an abelian cat.
            kernels, cokernels, images exist and behave like you expect.
        
        -   How to construct? Construct naively, and sheafify!
        
        -   How to detect? On stalks!
        
        -   Enough to work on a base.
        
        -   Everything holds for $O\_X$ modules.

3.  Friday

    1.  **important** not logically necessary
        Definition: A differentiable manifold is a ringed space $(X, O\_X)$ "which is locally isomorphic to $(U, O\_U)$ where $U \\subset \\mathbb R^n$ is an open set and $O\_U$ is the sheaf of differentiable real valued functions on $U$".
        1.  Make this precise (eliminate the " " marks).
            To do this, you will have to define the notion of an isomorphism of ringed spaces.
            More generally, try to define a morphism of ringed spaces.
        
        2.  Show that this definition is equivalent to the usual definition of a differentiable manifolds (using charts and gluing maps). 
            You will have to prove the (easy) fact that for $U, V \\subset \\mathbb R^n$, xif $\\phi \\colon U \\to V$ is continuous, then it is differentiable if and only if differentiable functions pull back to differentiable functions.
    
    2.  -   Draw $spec k[t]\_(t)$.
        -   Draw $spec Z\_(p)$.
        -   Draw $spec \\mathbb Z\_p$ (the $p$-adics)
        -   Draw $spec k[[[[t]]]]$ (the ring of power series in $t$).
    
    3.  Describe $\\mathbb A^1\_{\\mathbb R}$ and $\\mathbb A^1\_{\\mathbb Q}$
    
    4.  Draw $spec \\mathbb C[x,y]$.
    
    5.  Draw $spec \\mathbb C[x,y]/xy$.
    
    6.  -   Draw $spec \\mathbb C[x]/x^2$
        -   Draw $spec \\mathbb C[x,y]/(x^2, xy, y^2)$
    
    7.  Go back to sheaves and convince yourselves that the category of sheaves is equivalent to the category of sheaves on a base.


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

1.  Discussion

    1.  Thursday
    
        1.  Pre-class poll
        
            Consider the diagram $\\cdots \\to \\mathbb Z \\to \\mathbb Z \\to \\cdots$ where all maps are multiplication by 2.
            
            /poll The limit of this diagram is
            Zero
            Z
            Z<code>[1/2]</code> (integers localised at 2; alternative notation to accommodate the next option)
            Z<sub>2</sub> (the 2-adic integers)
            
            /poll The colimit of this diagram is
            Zero
            Z
            Z<code>[1/2]</code> (integers localised at 2; alternative notation to accommodate the next option)
            Z<sub>2</sub> (the 2-adic integers)
            
            -****\***** Points for discussion
            
            1.  In $R$ mod, describe the kernel of $A \\to B$ as a limit and the cokernel as a colimit.
                Are these filtered?
            
            2.  1.4.B (explicit construction of the limit)
            
            3.  Generalise example 1.4.6 and describe $S^{-1}M$ as a colimit.
            
            4.  1.4.C ($\\mathbb Q$ as a colimit)
            
            5.  1.4.D (explicit description of a filtered colimit)
            
            6.  Prove that (in $R$ mod) filtered colimits preserve exactness.
                Corollary: Localisation is exact! (important)
                Also try to see this directly, using fractions.
            
            7.  1.6.G (localisation commutes with hom for fin. pres. mod.)
            
            8.  2.1.A (stalk of sheaf of functions is a local ring)
            
            9.  Remind each other what is the constant sheaf and what is the skyscraper sheaf.
                What are the stalks of the constant sheaf?
                What are the stalks of a skyscraper sheaf?
            
            10. Remind each other what adjoint functors are. Give examples!
    
    2.  Friday
    
        1.  Problems for discussion
        
            1.  2.1.A (The ring of germs of diff. functions has only one maximal ideal.)
                
                Think of some other sheaves of rings. Are their germs local rings?
                Examples: cont. functions, diff. fuctions, holomorphic functions, constant sheaf $R$?
            
            2.  2.2.F (morphisms form a sheaf)
                2.2.G (sections form a sheaf)
            
            3.  Let $Y \\to X$ be the inclusion of an open set. What is the sheaf of sections?
            
            4.  Let $S^1 \\to S^1$ be the squaring map $z \\to z^2$.
                Understand its sheaf of sections. What are its stalks? What are its global sections?
            
            5.  Can you construct a different sheaf whose stalks are the same as in the previous example?
            
            6.  **optional**
                2.2.J (Stalks of $O\_X$ modules)
            
            7.  2.3.D (reality check for $Hom$ sheaves)
            
            8.  **important** 
                2.3.I (kernel of a map of sheaves is a sheaf!)
            
            9.  **important**
                2.3.J (but the cokernel need not be!)
                Play with the pre-sheaf $F$.
            
            10. Convince yourself (and your friends) that an algebraic variety (with the Zariski topology) along with the sheaf of regular functions is a locally ringed space.


## Week 1

-   Read: [Chapter 1 Sections 1.1&#x2013;1.3.4 (localisation)](http://math.stanford.edu/~vakil/216blog/FOAGnov1817public.pdf).
-   Watch: [AGITOC Pseudo-lecture 1](https://www.youtube.com/watch?v=WTEZjR5aNjw).
-   Do: 1.2.B, 1.3.A, 1.3.D,  1.3.E, 1.3.G, and ponder:
    1.  "A group is a category with 1 object and invertible morphisms." Love it or hate it?
    2.  Learn the language of universal properties and use it to phrase the constructions you already know. For example: kernels, cokernels, finite/infinite sums and products.
    3.  You may not have seen localisation before. That's OK. Try to digest as much as you can.
    4.  Show (preferably using the universal property) that the localisation $R\_f$ is isomorphic to $R[y]/(yf-1)$.
    5.  What is the geometric meaning of localisation? Can you use it to construct an example where $R \\neq 0$ but $R\_f = 0$?


### Discussion

1.  Thursday

    1.  Points for discussion
    
        -   What was easy, hard, confusing?
        -   &#x2026; insightful?
        -   Examples!
        -   1.2.B (automorphism group)
        -   1.3.A (unique init/final obj)
        -   What is the universal property for:
            -   Disjoint union of two sets
            -   The kernel of A -> B
            -   The cokernel of A -> B
            -   The one-point compactification
            -   The metric completion
        -   What are the initial/final objects in Top, Vec, Ab, Set? (create a poll?)

2.  Friday

    1.  Pre-class poll
    
        Consider the category whose objects are algebraic field extensions of $\\mathbb Q$ (and whose morphisms are maps of fields).
        
        /poll The category above has
        a final object, namely $\\overline{\\mathbb Q}$.
        no final object.
    
    2.  Points for discussion
    
        1.  warm-up
            Let $R = \\mathbb Z$ and $f = 2$.
            -   Describe the elements of $R\_f$ explicitly.
            -   Let $K$ be a field of characteristic $59$. Show that there is a unique map $R\_f \\to K$.
        2.  notation-alert!
            $R = \\mathbb Z$ and $p = 2$.
            -   Describe the elements of $R\_(p)$ (horrible notation, I know!)
            -   What's the analogue of the second part of the previous exercise?
        3.  instructive
            Show (preferably using the universal property) that the localisation $R\_f$ is isomorphic to $R[y]/(yf-1)$.
        4.  Baby 1.3.C: localisation is injective for integral domains.
        5.  geometry! important!
            Suppose $R$ is the ring of functions of an affine variety $X$.
            Then $R\_f$ is the ring of functions of <span class="underline"><span class="underline"><span class="underline">\_</span></span></span>.
        6.  Having done (5), can you "see" (4)?
        7.  Can you construct an example where $R \\neq 0$ but $R\_f = 0$?
        8.  1.3.E ($\\star$)


# More things to read or watch

-   [Ravi Vakil's pseudo-course website](https://math216.wordpress.com/agittoc-2020/)
-   [Richard Borcherd's lectures on schemes](https://www.youtube.com/watch?v=BX3jiLdehA4&list=PL8yHsr3EFj50Un2NpfPySgXctRQK7CLG-)
-   [Why are points of a scheme the prime ideals](pointsareprimes.pdf)

