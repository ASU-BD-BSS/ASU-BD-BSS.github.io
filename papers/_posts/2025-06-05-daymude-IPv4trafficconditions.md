---
layout: paper
title: "Correctness, Security, and Performance of IPv4 Selection Under Bursty Traffic Conditions"
year: "2025-26"
shortref: "Joshua Daymude"
authors: "Joshua Daymude, Sean Bergen"
category: paper
published: true
tags: []
---
{% include JB/setup %}

# Background

The Internet is built on top of streams of packets being routed from sources to destinations. Whenever an IPv4 packet is too large for the next link of its routing path, it is "fragmented" into smaller pieces; the destination machine then "reassembles" these fragments into the original packet. In order to unambiguously determine which fragments should be reassembled into which packet, the source machine assigns each packet an "IP identifier (IPID)", which is a 16-bit unsigned integer. Despite its innocuous purpose, the IPID now has a 27-year history of being abused to poison DNS caches, hijack TCP connections, launch denial of service attacks, scan ports, detect and measure connections, and detect Internet censorship, all from off-path vantage points requiring the attacker to have nothing more than an active Internet connection. 

A recent paper from the BSS center collects this history of exploits and the subsequent changes they drove in IPID selection methods. This paper also conducts a mathematical analysis of each selection method's correctness (does the method support unambiguous packet reassembly?), security (are sequences of IPID values sufficiently difficult to predict?) and performance (what are the method's time and space complexities?). However, this analysis assumes that packet interarrival times are Poisson-distributed, which is nice for mathematical analysis and reasonable for large-scale traffic, but is realistic for individual machines. This project explores what happens to this analysis when the network traffic model is adapted with more realistic properties (burstiness, long-range dependence, self-similarity, etc.).

# Research Goals

The scholar team will (1) read and understand the BSS survey paper on IPID selection techniques and their correctness, security, and performance, (2) explore background literature on alternative mathematical models of network traffic beyond simple Poisson distributions, including Markov Modulated Poisson Processes and autoregression models, (3) adapt existing mathematical analyses and simulation experiments of IPID selection correctness and security to these new network traffic models, and (4) carefully compare the updated results to the originals, providing actionable insights if any of the recommendations appear to change.

# Skills Needed

Probability theory; Python; ability to read mathematically formal model descriptions

# Skills Gained

Mixed stochastic modeling; numerical methods; parallel computation in Python; network security and privacy