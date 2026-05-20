---
layout: paper
title: "Identifying Sources of Internet Censorship with DART"
year: "2026-27"
shortref: "Stephanie Forrest"
authors: "Stephanie Forrest, Kirtus Leyba"
category: paper
published: true
tags: []
---
{% include JB/setup %}

# Background

Censorship on the Internet is hard to measure, especially from far away.
For example, when users try to access a restricted webpage and are blocked by government devices, the blocking does not produce an easy to measure signal for researchers studying the censorship from the other side of the world.
In the past, scientists have resorted to measuring the Internet while being physically close to the cesnorship devices, such as behind the firewall of an authoritarian country.
Measurements taken this way can put citizens or the operators of networks in those countries at risk of legal consequences.
Nevertheless, large amounts of public data measuring censorship, such as probes testing for network connectivity, have been collected over time.
Unfortunately, these data are limited in major ways.

One issue with public censorship datasets is that they only measure the website that the user tried to access when they were blocked.
This doesn't directly tell us where the blocking happened, and the user could have been blocked anywhere in the path to the website.
Another challenge is that the measurements themselves can be noisy, or prone to error.
One way that Internet censorship is measured is by trying to access a website, say wikipedia for example, and comparing the HTML response in various geographical locations.
Sometimes, the response can be malformed and appear blocked, but this can happen due to network failures.
This type of error is a false-positive.
Fortunately, this kind of measurement noise and uncertainty can be modeled, an approach that lets us ask questions about the censorship despite the challenges.

# Research Goals

In this project, we are interested in using a statistical modeling approach to learn where on the network censorship is happening.
In particular, we are using the Differential Analysis with a Reference Topology (DART) technique, which predicts which network connections are compromised based on noisy input data.
This project involves applying the DART software to a suite of noisy censorship datasets collected from public Internet probes.
We hope to identify the distribution of censorship technologies with this public data to maximize its use, without needing additional measurements in the censoring countries.
Additionally, we aim to produce network visualizations that capture the large scale structure of ongoing censorship in various nations.

Specifically, the scholar team will
(1) become familiar with the DART pipeline,
(2) perform a first-pass data analysis and visualization of public censorship data,
(3) produce new predictions using DART and public datasets,
(4) visualize which network connections are predicted to be blocked, and
(5) correlate evidence of network interference with historical or ongoing events.

# Skills Needed

Required: Intermediate programming skills (e.g., prior experience working with C/C++); Python data processing; probability theory

Beneficial: Working knowledge of the `pandas`, `numpy`, and `matplotlib` Python packages

# Skills Gained

Large-scale data processing; algorithms for network science; Bayesian inference of network structure
