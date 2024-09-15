---
layout: paper
title: "EvoSOPS: Evolving Collective Behavior"
year: "2024-25"
shortref: "Joshua Daymude"
authors: "Joshua Daymude, Devendra Parkar"
category: paper
published: true
tags: []
---
{% include JB/setup %}

# Background

Collective behavior is the product of many individuals interacting locally such that the overall collective exhibits an emergent, macro-scale function.
Classical examples include birds flocking, ants forming rafts and other structures, and human crowd dynamics.
From an engineering perspective, one can ask "Given the capabilities of any one individual and a desired behavior for the entire collective, what local interactions yield the goal behavior?"
In a recent paper from the Daymude Lab, we produced a genetic algorithm that takes as input a mathematical specification of a goal behavior and evolves local algorithms that achieve it.
We are now interested in extending beyond genetic algorithms to other evolutionary search strategies.
In particular, we want to know if Covariance Matrix Adaptation (CMA-ES) can produce similar or better solutions in significantly less time.

# Research Goals

Scholars on this project will (1) learn the basics of evolutionary computation, (2) carefully study the CMA-ES algorithm and its existing implementations, (3) read and understand EvoSOPS, the genetic algorithm framework for evolving algorithms for collective behavior, (4) design and implement a translation of EvoSOPS to the CMA-ES approach, (5) run large-scale simulations for aggregation, phototaxis, separation, and coating behaviors, (6) compare these results and runtimes to the EvoSOPS results, and (7) report findings in a written report.

# Skills Needed

A strong grasp of systems programming in C, C++, or Rust; familiarity with the Linux command line; familiarity with probability and randomized algorithms; interest in reading and operationalizing existing computer science literature.

# Skills Gained

Evolutionary computation; high-performance computing; visualization; distributed algorithms; concepts from statistical physics
