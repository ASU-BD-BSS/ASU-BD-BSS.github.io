---
layout: paper
title: "Investigating the Innate Diversity of Generated Code"
year: "2026-27"
shortref: "Stephanie Forrest"
authors: "Stephanie Forrest, Pemma Reiter"
category: paper
published: true
tags: []
---
{% include JB/setup %}

# Background

Software monocultures readily emerge when sectors or organizations tend to use similar softwares and software configurations.
Yet, this concentration of similarly configured software, network and compute systems can introduce severe and widespread risk, such as single points of failures and systemic security issues.
One basic approach that works towards mitigating this security risk is increasing the number of diverse software implementations or software diversity.
Intuitively and historically, we elicit software diversity by charging a wide-range of individuals to write code for a distinct goal or specification.
However, the increased adoption of generative codeLLM models in human-oriented and agentic development places software diversity front and center: can the use of AI-generated code tacitly induce software monoculture?
Do codeLLM models generate diverse software implementations?

# Research Goals

This project will investigate generative codeLLM models and the diversity of their outputs.
Using a well-defined program specification, we will probe the diversity of unprompted and prompted code outputs, using dynamic analyses (profiling, coverage, etc.) and static analyses (complexity, control-flow, etc.) to measure their similarity.
Students will be tasked to structure and run experiments towards these goals.

# Skills Needed

Familiarity with Python and/or C/C++ programming and compilation toolchains

# Skills Gained

Engineering with codeLLM models; program analysis; measuring code similarity
