---
layout: paper
title: "Rusty Culture: A Scalable Visual Simulator of the Axelrod Culture Model"
year: "2024-25"
shortref: "Joshua Daymude"
authors: "Joshua Daymude, Sean Bergen"
category: paper
published: true
tags: []
---
{% include JB/setup %}

# Background

The Axelrod model of cultural dissemination is a very simple agent-based model of opinion dynamics. Individuals occupy nodes in a lattice and interact with their neighbors with probabilities and outcomes depending on how many cultural features they have in common. Populations can converge to monocultures, established locked-in fragments of different cultural pockets, or oscillate forever, all depending on some model parameters.

Many results have been obtained over the years through simulation, but the Daymude Lab is currently investigating new theoretical analyses. To support this investigation, we want a team of Biocomputing Scholars to build the fastest, most scalable, and most flexible visual simulator of the culture model that has ever existed and compare its results to reported results in the literature.

# Research Goals

The scholar team will (1) read and understand the Axelrod model of cultural dissemination, (2) read follow-on papers with a focus on understanding the model's variants and the phase transitions researchers are interested in, (3) write and propose a software specification for a simulator/visualizer of the culture model, (4) implement a first draft of the proposed simulator in Rust, (5) implement the proposed visualizer, (6) optimize the code and Rust parallelization for high performance computing scenarios, and (7) replicate existing phase transition results in the literature to validate the correctness of the simulator.

# Skills Needed

a strong grasp of object-oriented systems programming (C/C++, Java, Rust); some exposure to parallel programming concepts; a basic understanding of probability theory; interest in reading computer science, physics, and social science literature

# Skills Gained

exposure to computational social science + phase transitions in complex systems; agent-based modeling; parallel programming in Rust; visualization
