---
layout: paper
title: "Evolving Adaptive Therapies for Cancer"
year: "2024-25"
shortref: "Joshua Daymude"
authors: "Joshua Daymude, Siva Katta"
category: paper
published: true
tags: []
---
{% include JB/setup %}

# Background

In traditional cancer therapy, large doses of drugs are applied for fixed lengths of time, having the unfortunate side effect of applying selective pressure towards cells developing drug resistance.
Adaptive therapy is an alternative approach that aims to treat for stability by adjusting drugs, doses, and timing based on tumor characteristics to maintain competition between drug-resistant and drug-sensitive cells.
However, the sheer number of possible adaptive therapy regimens and the costs of clinical trials make it prohibitively expensive to try every adaptive therapy.

# Research Goals

This project aims to use genetic algorithms, a type of evolutionary search algorithm, to explore the space of possible adaptive therapies.
Candidate therapies will be tested using CancerSim, a 3D simulator of tumorigenesis developed in the Daymude, Forrest, and Maley labs.
The project will need to design and implement genome representations of adaptive therapies; design and implement mutation, crossover, and selection operators to act on these representations; connect therapies to CancerSim for fitness evaluation; and perform large-scale experiments to surface good candidate therapies.

# Skills Needed

Scripting (bash/python), Linux command line, familiarity with C++.

# Skills Gained

Cancer ecology, evolutionary search and genetic algorithms, high-performance computing
