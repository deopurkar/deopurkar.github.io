---
layout: post
title: Stabilizers and duals
date: Thu Jan 4 10:22:23 AEDT 2018
tags: algebra
---

Let $G$ be a group acting on a vector space $V$.
We say that the action has *trivial generic stabilizers* if there exists an element $v$ in $V$ such that the stabilizer of $v$ is trivial.
Knowing this property is important, for example, in calculating basic properties of the quotient space $V/G$ in geometry.
Suppose that the action of $G$ on $V$ has trivial generic stabilizers.
Is the same true for the induced action of $G$ on the dual space $V^*$? No!

Here is a simple example, thanks to Asilata Bapat.
Let $G$ be the group of upper triangular $2 \times 2$ matrices of the form 
\\[\begin{pmatrix} 1 & a \\\ 0  & b \end{pmatrix}\\]
acting a two dimensional vector space $V$ by multiplication on the left.
Denote the matrix above by $M(a,b)$.
The stabilizer of an element $[x,y] \in V$ consists of matrices $M(a,b)$, where $a$ and $b$ satisfy the equation
\\[
	\begin{pmatrix} 1 & a \\\ 0  & b \end{pmatrix} 
	\begin{pmatrix} x \\\ y \end{pmatrix} = \begin{pmatrix} x \\\ y \end{pmatrix},
\\]
which translates into the pair 
\\[
	x + ay = x, \quad by = b.
\\]
Assuming $y \neq 0$, the only solution is $b = 1$ and $x = 0$, so the stabilizer is trivial.
In other words, the action of $G$ on $V$ has trivial generic stabilizers.

The action of $M(a,b)$ on the dual space is by left multiplication by the inverse transpose of the upper triangular matrix above, namely by
\\[
	\begin{pmatrix}
		1 & 0 \\\
		-a/b & 1/b
	\end{pmatrix}.
\\]
The stabilizer of an element $[s,t] \in V^* $ is consists of matrices $M(a,b)$ where $a$ and $b$ satisfy the equation
\\[
	\begin{pmatrix}
		1 & 0 \\\
		-a/b & 1/b
	\end{pmatrix}
	\begin{pmatrix}
	s \\\ t
	\end{pmatrix} = 
	\begin{pmatrix}
	s \\\ t
	\end{pmatrix},
\\]
which translates into the pair
\\[
	s = s, \quad -sa/b + t/b = t.
\\]
Note that this pair is actually only one linear equation in two variables $a$ and $b$, and has infinitely many solutions.
Therefore, the induced action of $G$ on $V^*$ does not have trivial generic stabilizers.
