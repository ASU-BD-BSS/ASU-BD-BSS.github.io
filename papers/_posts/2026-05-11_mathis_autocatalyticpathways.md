---
layout: paper
title: "Toward Autonomous Discovery of Autocatalytic Prebiotic Pathways Using Language Models and Quantum Chemistry"
year: "2026-27"
shortref: "Cole Mathis"
authors: "Cole Mathis, Sruthy Kettidathil Chandy"
category: paper
published: true
tags: []
---
{% include JB/setup %}

# Background

One of the biggest unsolved mysteries in science is how life first emerged from simple chemicals on early Earth.
To answer this, we study prebiotic chemistry, the reactions that could have spontaneously produced the building blocks of life, like amino acids and sugars, before any living organism existed.
A key concept here is an autocatalytic network: a set of chemical reactions where the products help drive the same reactions forward, essentially a self-sustaining chemical cycle.
Think of it as chemistry that feeds itself.
Discovering these cycles requires searching through an enormous space of possible reactions, which is too vast for humans to explore manually.
This project uses AI, specifically large language models like the technology behind ChatGPT, to propose candidate reactions, and then uses quantum chemistry software to check whether those reactions are physically plausible.
The goal is to build a system that can systematically map out which prebiotic reactions are feasible and which ones form self-sustaining cycles, bringing us closer to understanding the chemical origins of life.

# Research Goals

This project will build a three-stage computational pipeline for exploring prebiotic chemical reaction space.
First, a large language model will be used to propose candidate reaction products given a set of starting molecules and environmental conditions such as temperature, pH, and mineral catalysts.
Second, a quantum chemistry tool called xTB will evaluate whether each proposed reaction is thermodynamically feasible by filtering out physically impossible suggestions.
Third, all validated reactions will be stored in a knowledge graph that can be queried to detect autocatalytic cycles, where a product of one reaction re-appears as a reactant elsewhere in the network.
The pipeline will be benchmarked against established baselines including Molecular Transformer and zero-shot GPT-4o on well-defined prebiotic reaction classes, with evaluation focused on prediction accuracy, feasibility rate, and autocatalytic connectivity of discovered products.

# Skills Needed

Required: proficiency in Python; understanding of chemistry at the introductory college level; prior coursework or experience with machine learning, natural language processing, and/or data structures

Beneficial: familiarity with graph algorithms, SMILES molecular notation, and/or cheminformatics libraries (e.g., RDKit)

Most importantly, applicants should be comfortable working in an interdisciplinary setting and willing to engage with both the computational and scientific dimensions of the project.

# Skills Gained

Students will gain hands on experience building and deploying LLM-based pipelines for scientific applications, including prompt engineering and structured output parsing. They will learn to integrate quantum chemistry software into automated workflows and interpret thermodynamic outputs in a chemical context. Students will develop practical skills in knowledge graph construction and graph querying using Python. Beyond technical skills, participants will have a chance to engage with the full research process from system design and implementation through benchmarking, result interpretation, and scientific writing.

# Other Notes

This project sits at the intersection of artificial intelligence and one of the deepest questions in science, i.e, the chemical origins of life.
Strong scholar performance may lead to co-authorship on a research publication or workshop paper.
Students with an interest in graduate school, particularly in computational chemistry, bioinformatics, or AI for science, will find this project especially valuable.
