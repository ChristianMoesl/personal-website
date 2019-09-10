---
layout: post
title:  "Staged Scala for the Web"
categories: scala
permalink: scala-to-wasm
---

WebAssembly (WASM) has been around since 2 years for now and many new projects used it as a target compile language to generate code for the web. The motivation for that could be, to speed up some critical parts in a javascript program, or to generate code from a completely different language for the web. In this post I will describe how to do both of that and even more generate highly specialised programs and therefore fast programs from Scala code.

### Why Scala?
From first sight it seems counter intiutive, to choose Scala as the desired programming language over for example C. There are [C compilers for WASM][emscripten] and C is clearly the best language to write high performance code, right? Altough C is a great language for that, it is also known for it's safety problems and the lack of high abstractions.



Futamura Projections The key idea behind our approach goes back to early work on partial evaluation in the 1970’ies, namely the notion of Futamura Projections [6]. The setting is to consider programs with two inputs, one designated as static and one as dynamic. A program specializer or partial evaluator mix is then able to specialize a program p with respect to a given static input. The key use case is if the program is an interpreter:


Y. Futamura. Partial evaluation of computation process, revisited. Higher-Order and Symbolic Computation, 12(4):377–380, 1999.

[emscripten]:   https://emscripten.org
[lms]:          https://scala-lms.github.io
[500loc-sql-c]: https://www.cs.purdue.edu/homes/rompf/papers/rompf-icfp15.pdf
