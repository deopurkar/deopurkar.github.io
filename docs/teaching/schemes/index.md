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
4.  Due 16 Oct: 8.2.N, 8.2.P, 9.2.D, 9.2.H, 9.4.B (c,d,f,g), 13.3.F, 13.3.G, 13.4.A
5.  Due 5 Nov:
    -   13.7.D + find the support of the module associated to \\(k[x,y]/xy\\) on \\({\\rm Spec}\\ k[x,y]\\).
    -   13.7.F
    -   13.7.K
    -   14.1.D
    -   14.2.K
    -   Which line bundles on \\(\\mathbb P^n\_k\\) are globally generated?
    -   Let \\(f \\colon \\mathbb P^1\_k \\to \\mathbb P^n\_k\\) be a map such that \\(f^\*O(1) = O(d)\\). Suppose \\(d < n\\). Prove that the image of \\(f\\) must lie on a hyperplane.
    -   Prove that the automorphism group of \\(P^n\_k\\) is the group \\(PGL\_{n+1}(k)\\).


# Midterm exam

The midterm exam will be an oral exam in the week of September 21. It will be about 45 minutes long. I have prepared [a list of questions for the exam](midterm1.pdf). We will ask questions from this list, small variations on them, and follow up questions based on your responses.


# Final exam


## Practice questions

1.  Let \\(X\\) be a Noetherian scheme.
    -   Give the definition of a quasi-coherent sheaf on \\(X\\).
    -   Give an example of a quasi-coherent sheaf that is not coherent.
    -   Give an example of a coherent sheaf that is not locally free.
    -   Is a subsheaf of a locally free sheaf necessarily locally free?
    -   Suppose \\(F\\) is a coherent sheaf such that the stalks \\(F\_x\\) are free for all (closed) points \\(x\\). Must \\(F\\) be free? Locally free?

2.  Let \\(X = {\\rm Spec}\\ A\\).
    -   Explain the relationship between closed subschemes of \\(X\\) and ideals of \\(A\\).
    -   Let \\(Y \\to X\\) and \\(Z \\to X\\) be closed embeddings. Is \\(Y \\times\_X Z \\to X\\) also a closed embedding? What if \\(X\\) is not affine? What about open embeddings?

3.  Let \\(X = {\\rm Proj}\\ \\mathbb Q[X,Y,Z]/(X^2+Y^2+Z^2)\\).
    -   Is there a map \\({\\rm Spec}\\ \\mathbb Q \\to X\\)?
    -   Prove that \\(X \\times {\\rm Spec}\\ \\mathbb C\\) is isomorphic to \\(\\mathbb P^1\_{\\mathbb C}\\).
    -   Is \\(X\\) isomorphic to \\(\\mathbb P^1\_{\\mathbb Q}\\)?
    -   Describe a closed embedding of \\(X \\times X\\) in \\(\\mathbb P^n\_{\\mathbb Z}\\) for some \\(n\\).

4.  Let \\(X = \\mathbb P^1\_\\mathbb C\\). Let \\(p = [0:1]\\) and \\(q = [1:0]\\).
    -   Describe the sheaf \\(O(p-q)\\).
    -   Is this quasi-coherent? Coherent? Locally free?
    -   What more can you say about it?
    -   What if I had taken a different linear combination of a different set of points?

5.  Everything in this question is over a field \\(k\\).
    -   What is the Picard group of \\(\\mathbb P^n\\)?
    -   What about \\(\\mathbb P^n \\times \\mathbb P^m\\)?
    -   Let \\(L = \\pi\_1^\* O(a) \\otimes \\pi\_2^\* O(b)\\) on \\(\\mathbb P^1 \\times \\mathbb P^1\\). For which \\(a\\) and \\(b\\) does \\(L\\) have a global section? is globally generated?
    -   Describe some global sections of \\(L\\) when \\(a = 1\\) and \\(b = 1\\).
    -   Do the sections you wrote define a map to a projective space?
    -   What is the nature of this map? (Finite, open embedding, closed embedding, constant)?

6.  Let \\(X = \\mathbb P^2\_k\\).
    -   What is the Euler characteristic of the structure sheaf of \\(m\\) points?
    -   What is the Euler characteristic of the ideal sheaf of \\(m\\) points?
    -   Let \\(I\\) be the ideal sheaf of \\(6\\) points. Using the short exact sequence on cohomology, can you make a guess about the dimension of \\(H^i(I)\\)? What about \\(H^i(I(n))\\)? Should these numbers be the same for all configurations of the points?


## Marking

Five major areas. Each out of 10.

1.  Quasi-coherent and coherent sheaves, stalks, fibers, support.
2.  Local freeness, kernels/cokernels, pull-backs, push-forwards.
3.  Open and closed embeddings, fiber products.
4.  Line bundles, divisors, maps to projective space.
5.  Global sections, cohomology, Euler characteristic.


# Weekly reading, viewing, and doing

"Do" does not mean "write up and submit". 
A general convention in Ravi's book is that ⋆ indicates an advanced section that can be skipped on the first reading.


## Week 12

-   **Read/skim**: 18.1, 18.2, 18.3, 18.4
-   **Do**: 
    -   Exercise 18.3.A
    -   Exercise 18.4.A
    -   Exercise 18.4.B/C (maybe)
-   **Watch**
    1.  [Sheaf cohomology](<https://vimeo.com/470803503>)
    2.  [Cohomology of quasicoherent sheaves](<https://vimeo.com/470835362>)
    3.  [Cech cohomology and the Picard group](<https://vimeo.com/472058119>)


### Thursday

1.  Let \\(\\pi \\from X \\to Y\\) be an affine morphism and \\(F\\) a quasi-coherent sheaf on \\(X\\).
    -   Prove that \\(H^i(X, F) = H^i(Y, \\pi\_\* F)\\).
    -   In particular, if \\(\\pi\\) is a closed embedding, "treating \\(F\\) as a sheaf on \\(Y\\)" does not change the cohomology.

2.  Compute the cohomology group \\(H^1(\\mathbb A^2 - \\{(0,0)\\}, O)\\).

3.  Let \\(X \\subset \\mathbb P^1\_k\\) be a finite set of \\(m\\) points.
    -   Show that we have an exact sequence \\(0 \\to O(-m) \\to O \\to O\_X \\to 0\\).
        (Standard abuse of notation: writing \\(O\_X\\) for \\(i\_\* O\_X\\) where \\(i\\) is the closed embedding.)
    -   Use this and \\(h^1(\\mathbb P^1, O) = 0\\) to find \\(h^1(\\mathbb P^1, \\O(-m))\\).

4.  Let \\(X \\subset \\mathbb P^2\_k\\) be a curve of degree \\(d\\). That is, \\(X = V(F)\\), where \\(F\\) is a section of \\(O(d)\\).
    -   Show that we have an exact sequence \\(0 \\to O(-d) \\to O \\to O\_X \\to 0.\\) What is the first map in this sequence?
    -   Find the Euler characteristic of \\(O\_X\\).
    -   The genus of a curve \\(X\\) is defined to be \\(1 - \\chi(O\_X)\\). Find the genus of a curve of degree \\(d\\) in \\(\\mathbb P^2\_k\\).
        (For smooth connected curves, this is the same as \\(h^1(O\_X)\\). Over \\(\\mathbb C\\), this agrees with the topological genus.)

5.  Assume the Hilbert Syzygy Theorem: every coherent sheaf \\(F\\) on \\(\\mathbb P^n\\) has a finite resolution whose terms are direct sums of line bundles.
    
    -   Prove that \\(n \\mapsto \\chi F (n)\\) is a polynomial function of \\(n\\). This is called the "Hilbert polynomial" of \\(F\\).
    -   Prove that \\(n \\mapsto h^0(F(n))\\), called the "Hilbert function", agrees with the Hilbert polynomial for all sufficiently large \\(n\\). (Hint: Serre vanishing).
    
    (There is a more direct inductive proof of polynomiality using slicing by hyperplanes.)


## Week 11

-   **Read**: 16.1, 16.2, 16.3, 16.4 (which uses bits from 15.3.3), 16.5 (take S = spec k), skim the rest of 16.
-   **Notes**:
    -   The main section I want you to understand is 16.4. It describes all maps from an X to a projective space. As a result, it describes all maps from X to a quasi-projective variety Y. Since almost all schemes we care about are quasi-projective, this explains why we care so much about line bundles.
    -   16.3 (the construction of the pull-back) is long for the same reasons that the section on fibered products was long. Everything is easy over affines, but it takes some space to carry out the gluing. I suggest going over this section lightly, perhaps only focusing on the affine case, and believing that gluing works.
-   **More**:
    -   Cech cohomology, for example start skimming Chapter 18.
        I may add more references or make my own video/notes.


### Thursday

1.  Prove that pullback of a locally free sheaf is locally free (of the same rank).

2.  (15.3.F) Vitally important construction!

3.  Read 16.4.1 (Important Theorem) and its proof.

4.  Let \\(\\mathbb P^n \\to \\mathbb P^n\\) be the identity map. What is the line bundle and the sections corresponding to this map?

5.  Show that the automorphism group of \\(\\mathbb P^1\_k\\) is \\(PGL\_2(k)\\).

6.  Let \\(p \\in \\mathbb P^2\\) be a point. Recall we have a linear projection \\(\\mathbb P^2 - \\{p\\} \\to \\mathbb P^1\\). Which line bundle and sections give this map?

7.  Find the divisor class group (= Picard group) of the blow-up of \\(\\mathbb A^2\\) at \\((0,0)\\).


### Friday

1.  Show that a map \\(X \\to \\mathbb P^n\\) is the same as a line bundle \\(L\\) on \\(X\\) and a surjective map \\(O\_X^{n+1} \\to L.\\)
    
    Suppose for simplicity that we are working over an algebraically closed field \\(k\\). I claim that the above statement is a precise version of: \\(\\mathbb P^n\_k\\) is the space of one-dimensional quotients of \\(k^{n+1}\\). Can you justify this claim?
    Hint: Take \\(X = {\\rm Spec}\\ k\\) to get a description of closed points of \\(\\mathbb P^n\_k\\).

2.  Read theorem 16.5.1 (take the base S = Spec k, for simplicity) and its proof (16.5.2)
    As an example, consider the map \\({\\rm Spec}\\ \\mathbb Z \\dashrightarrow \\mathbb P^1\_\\mathbb Z\\) "defined by" \\([6:12]\\). On which open set is this map defined? Extend it to all of \\({\\rm Spec}\\ \\mathbb Z\\).

3.  (15.3.C: Globally generated sheaves. Assume X Noetherian)

4.  Read Serre's theorem A (15.3.8) and its consequence (15.3.1)

5.  Let \\(I\\) be the ideal sheaf of a point in \\(\\mathbb P^2\_k\\). Is \\(I\\) globally generated? Find an \\(n\\) such that \\(I(n)\\) is globally generated.

6.  Read the Hilbert Syzygy Theorem (15.3.2)


## Week 10

-   **Read**: Chapter 14 and chapter 12.5 for background
-   **Notes**:
    -   14.1 should be straightforward (and will get your hands dirty).
    -   14.2 is dense and challenging. But it is extremely important in algebraic geometry (and in algebraic number theory!).
    -   We have not read all the pre-requisites for this section, but you should attempt to read it anyway, taking on faith some things from previous section. Here are some pointers:
    -   Restrict to Noetherian integral schemes.
    -   There is some algebra that is necessary. The main ideas are
    -   Dimension = Krull dimension = max of the length of a chain of prime ideals. This could be infinite, but assume it is finite.
    -   Let \\(Y \\subset X\\) be irreducible of codimension \\(r\\). Let \\(p\\) be the generic point of \\(Y\\), then the Krull dimension of \\(O\_{X,p}\\) is \\(r\\). In particular, if \\(r = 1\\), then \\(O\_{X,p}\\) has dimension 1.
    -   If \\(X\\) is "regular in codimension 1" then \\(O\_{X,p}\\) is regular local of dimension 1, and hence a Discrete Valuation Ring (DVR). See 12.5. DVRs allow us to measure "order of vanishing" of a function, which is essential for divisor theory.
        Regular in codimension 1 is equivalent to "singular locus of \\(X\\) has codimension 2 or higher". So, not too singular.
    -   For divisor theory, it is important to work with normal \\(X\\). The normality condition appears to be purely algebraic (integrally closed), but has two important geometric consequences: (1) Normal implies regular in codimension 1 (2) Hartog's lemma holds: if a rational function \\(f\\) has no poles (in codimension 1), then \\(f\\) is regular.


### Discussions

1.  Thursday

    1.  (14.1.A)
        Show that the space of global sections of \\(O(n)\\) on \\(\\mathbb P^1\_k = {\\rm Proj}\\ k[X,Y]\\) is naturally isomorphic to \\(k[X,Y]\_n\\), the degree \\(n\\) graded component of \\(k[X,Y]\\).
    
    2.  Let \\(s = X^2Y(X + Y)\\), considered as a global section of \\(O(4)\\) on \\(\\mathbb P^1\_{\\mathbb C}\\). Find \\({\\rm div} (s)\\).
    
    3.  Let \\(s = \\frac{101}{100}\\), considered as a rational section of \\(O\\) on \\({\\rm Spec}\\ \\mathbb Z\\).
        Find \\({\\rm div} (s)\\).
    
    4.  Choose one of \\(X = {\\rm Spec}\\ \\mathbb Z\\) or \\(X = {\\rm Spec}\\ \\mathbb A^1\_k\\).
        Identify the group of \\(\\{(L,s)\\}\\)/isomorphism.
    
    5.  Understand the proof of 14.2.1: \\({\\rm div}\\) is injective on normal (Noetherian) \\(X\\).
    
    6.  (14.1.D)
        Sketch a proof of the fact that \\({\\rm Pic} \\mathbb P^1\_k = \\mathbb Z\\).
        Hint: The only invertible sheaf on \\(\\mathbb A^1\\) is the trivial one.
    
    7.  Failure of Hartog's lemma.
        Let us construct an \\(X\\) that is regular in codimension 1, but not normal. \\(X\\) can't be a curve (why?). So let us try a surface. We take a regular surface and modify it only in codimension 2 and hope to break normality. 
        
        Start with \\(Y = \\mathbb A^2\\). Obtain \\(X\\) by gluing two distinct points of \\(X\\), say \\(p = (1,0)\\) and \\(q = (0,1)\\) 
        
        -   Can you make this precise? Hint: this is an affine variety, so try to first construct the ring of functions, and then take the spec.
        -   Take any function \\(f\\) on \\(\\mathbb A^2\\) with distinct values at \\(p\\) and \\(q\\), for example \\(x-y\\). Then \\(f\\) is a rational function on \\(X\\) that has no poles (\\({\\rm div} f = 0\\)) but is not regular.

2.  Friday

    1.  (Example of 14.2.E)
        Let \\(D = 3[0] - [\\infty]\\) on \\(X = \\mathbb P^1\\). Show that \\(O\_X(D)\\) is an invertible sheaf. Show that it is isomorphic to \\(O(2)\\).
    2.  (14.2.E)
        Spend some time on the general result: For \\((L,s)\\), we have \\(O(div s) \\cong L\\).
    3.  (14.2.7)
        Digest the diagram in 14.2.7.
    4.  (14.2.5)
        Prove that if \\(D\\) is locally principal, then \\(O\_X(D)\\) is invertible.
    5.  (14.2.I)
        For a factorial \\(X\\), every divisor is locally principal.
    6.  Prove (using the divisor class group) that \\({\\rm Pic} \\mathbb P^n\_k = \\mathbb Z\\).
    7.  Prove (using the divisor class group) that \\({\\rm Pic} \\mathbb P^1\_k \\times \\mathbb P^1\_k = \\mathbb Z \\oplus \\mathbb Z\\).
    8.  (14.2.K) Pic of the complement of a hypersurface.


## Week 9

-   ****Read****: Chapter 13
-   ****Important points****
    -   The upshot of this chapter is: a quasi-coherent sheaf is to a scheme what a module is to a ring.
    -   Section 13.1 is for motivation. It talks about locally free sheaves, which are the most important quasi-coherent sheaves. On the first reading, skip the proof of 13.2.1.
    -   In 13.3, the main theorem (13.3.2) is basically a repeat of the sheaves = sheaves on a base fact.
    -   Do 13.3.D, 13.3.F, 13.3.G, 13.3.H, 13.4.A.
    -   Skip all the starred sections.
-   ****Watch****: I think we are beyond the pseudo-lectures because we skipped some chapters :(


### Discussions

1.  Thursday

    Choose your adventure.
    
    Let \\(k\\) be an algebraically closed field.
    
    1.  Let \\(X = \\mathbb A^1\_k\\) and let \\(p \\in X\\) be any closed point. Let \\(I\_p \\subset O\_X\\) be the ideal sheaf of \\(p\\).
        1.  Describe explicitly the module \\(I\_p(U)\\) for every open \\(U \\subset X\\).
        2.  Prove that \\(I\_p\\) is locally free of rank 1.
        3.  Now take \\(X = \\mathbb P^1\_k\\) and define \\(I\_p\\) as before. What are the global sections of \\(I\_p\\)? That is, find \\(\\Gamma(X, I\_p)\\).
        4.  What is the cokernel of the map \\(I\_p \\to O\_X\\)?
        5.  Give examples of 
            -   a coherent sheaf on \\(X\\) that is not locally free
            -   a quasi-coherent sheaf on \\(X\\) that is not coherent
        6.  Let \\(X = {\\rm Spec}\\ k[x,y]/(xy)\\) and \\(p = (0,0)\\). Show that the ideal sheaf \\(I\_p\\) is not locally free. Is it quasi-coherent? Coherent?
    
    2.  Let \\(i \\colon U \\to X\\) be the open inclusion \\(\\mathbb A^1 \\to \\mathbb P^1\\).
        1.  Prove that \\(i\_\* O\_U\\) is a quasi-coherent \\(O\_X\\)-module. (Appealing to a general theorem is OK).
        2.  Is \\(i\_\* O\_U\\) coherent?
        3.  What is the pushfoward look like for \\(f \\colon {\\rm Spec}\\ A \\to {\\rm Spec}\\ B\\)?
        4.  Prove the general theorem alluded to above (13.3.F)
    
    3.  Let \\(X = {\\rm Proj}\\ k[u,v][X,Y]/(vX-uY) \\subset \\mathbb A^2 \\times \\mathbb P^1\\).
        Prove that \\(\\pi \\colon X \\to \\mathbb P^1\\) is a line bundle. That is:
        1.  Construct an open cover \\(U\_i\\) of \\(\\mathbb P^1\\) and isomorphisms \\(\\pi^{-1} U\_i \\cong U\_i \\times \\mathbb A^1\\).
            (The standard open cover will work.)
        2.  Find the transition function(s) \\(U\_i \\cap U\_j \\times \\mathbb A^1 \\to U\_i \\cap U\_j \\times \\mathbb A^1\\) and show that they are linear in the \\(\\mathbb A^1\\) coordinate.
            (The linearity ensures that the fibers of \\(\\pi\\) get a consistent vector space structure.)
        3.  Let \\(I\\) be the sheaf of sections of \\(\\pi\\). Then \\(I\\) is locally free of rank 1.
            Find the global sections of \\(I\\).
        4.  What are the transitions functions of the dual \\(I^\\vee\\)?
        5.  What are the global sections of \\(I^\\vee\\)?

2.  Friday

    Adventure continued. But also:
    
    1.  Stalks and fibers
        
        Remark: A good (but not perfect) way to think about a sheaf \\(F\\) is as a collection of stalks \\(F\_p\\) (which are modules).
        
        If \\(F\\) is (quasi)-coherent, an even simpler (but more imperfect) approximation is as a collection of fibers \\(F|\_p\\) = (F<sub>p</sub> / m<sub>P</sub> F<sub>p</sub>) (which are vector spaces).
        
        Let \\(F\\) be a coherent sheaf on a locally Noetherian \\(X\\). What can be gleaned from the fibers?
        
        1.  Let \\(M = k[t]/(t-1)(t+1)\\) and  \\(F = \\widetilde M\\) on \\(X = \\mathbb A^1\_k = {\\rm Spec}\\ k[t] \\).
            What are the stalks of \\(M\\) at every point of \\(X\\)?
            What are the fibers of \\(M\\) at every point of \\(X\\)? (Including the generic point).
        
        2.  If \\(F|\_p = 0\\), then \\(F\_p = 0\\), and there exists an open neighborhood of \\(p\\) on which \\(F = 0\\).
        3.  \\(F \\to G\\) is surjective on fibers if and only if it is surjective. If F|<sub>p</sub> &rarr; G|<sub>p</sub> is surjective, then F &rarr; G is surjective in a neighborhood of p.
            What can you say about injectivity?
        4.  If \\(s\_1, &#x2026;, s\_n\\) are are sections of \\(F\\) that generate \\(F|\_p\\), then they generate \\(F|\_q\\) for every \\(q\\) in a neighborhood of \\(p\\).
        5.  The function \\(p \\mapsto dim(F|\_p)\\) is upper semicontinuous.
        6.  If \\(X\\) is reduced and connected, then \\(F\\) is locally free if and only if the rank function is constant.
        7.  Give an example where the above fails for non-reduced \\(X\\).
        8.  Let \\(X = \\mathbb A^2\\) and \\(I\\) the ideal sheaf of \\((0,0)\\). Compute the rank function for \\(I\\).


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


### Discussion

1.  Thursday

    1.  9.1.B (Fibered products of affines = tensor product of rings)
    
    2.  Consider \\(f \\colon Y = {\\rm Spec}\\ \\mathbb C[y] \\to {\\rm Spec}\\ \\mathbb C[x] = X\\) induced by \\(x \\mapsto y^2\\).
        Let \\(p \\colon {\\rm Spec}\\ \\mathbb C \\to X\\) be the closed embedding of a point.
        The (scheme-theoretic) preimage of \\(p\\) is the closed embedding \\(p \\times\_X Y \\to Y\\).
        Find the preimages of the point \\(x = 0\\) and \\(x = a\\) for \\(a \\neq 0\\).
        
        Draw a picture.
    
    3.  Consider \\(f \\colon Y = {\\rm Spec}\\ \\mathbb Q[y] \\to {\\rm Spec}\\ \\mathbb Q[x] = X\\) induced by \\(x \\mapsto y^2\\).
        Find the scheme-theoretic preimages of 
        
        1.  \\(p \\colon {\\rm Spec}\\ \\mathbb Q \\to Y\\) given by \\(y \\mapsto 0\\).
        2.  \\(p \\colon {\\rm Spec}\\ \\mathbb Q \\to Y\\) given by \\(y \\mapsto 1\\).
        3.  \\(p \\colon {\\rm Spec}\\ \\mathbb Q \\to Y\\) given by \\(y \\mapsto 2\\).
        
        Try drawing a picture.
    
    4.  Consider \\(f \\colon Y = {\\rm Spec}\\ \\mathbb Z[i] \\to {\\rm Spec}\\ \\mathbb Z = X\\).
        Find the scheme-theoretic preimages of the points (2), (3), and (5).
        Try drawing a picture.
    
    5.  9.2.C (a) (Intersection as fibered product)
    
    6.  A "geometric point" of a scheme \\(X\\) is a map \\({\\rm Spec}\\ k \\to X\\), where \\(k\\) is algebraically closed.
        Show that the fibers of \\(f \\colon Y = {\\rm Spec}\\ \\mathbb Q[y] \\to {\\rm Spec}\\ \\mathbb Q[x] = X\\) over geometric points are either a pair of distinct points or a non-reduced (double) point.

2.  Friday

    . . . the end of all our exploring
    Will be to arrive where we started
    And know the place for the first time.
    
    &#x2013; T. S. Eliot, “Little Gidding” (Four Quartets)
    
    1.  9.3.F (The blowup, again)
        Can you reconcile our previous description as \\({\\rm Proj}\\ k[x,y][u,v]/(xv-yu)\\) with Ravi's definition?
    2.  Show that the following properties are preserved under base change:
        1.  open embedding
        2.  closed embedding
        3.  affine
        4.  finite (affine + finite as a module) (optional)
    3.  9.6.1 (Check that the Segre embedding is a closed embedding)
    4.  9.6.B (Equations of the Segre embedding)
    5.  6.4.A, 6.4.B (Maps of graded rings and Proj)
        But NOT all maps of Proj are of this form!
    6.  6.4.D (Veronese)
    7.  6.4.F


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
