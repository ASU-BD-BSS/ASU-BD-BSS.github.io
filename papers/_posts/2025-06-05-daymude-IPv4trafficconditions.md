---
layout: paper
title: "IPv4 Identifier Selection Under Bursty Traffic Conditions"
year: "2025-27"
shortref: "Joshua Daymude"
authors: "Joshua Daymude, Holly Bergen"
category: paper
published: true
tags: []
---
{% include JB/setup %}

**Note**: This project is continuing from AY25-26 and is not accepting new applicants.

# Background

The Internet is built on top of streams of packets being routed from sources to destinations. Whenever an IPv4 packet is too large for the next link of its routing path, it is "fragmented" into smaller pieces; the destination machine then "reassembles" these fragments into the original packet. In order to unambiguously determine which fragments should be reassembled into which packet, the source machine assigns each packet an "IP identifier (IPID)", which is a 16-bit unsigned integer. Despite its innocuous purpose, the IPID now has a 27-year history of being abused to poison DNS caches, hijack TCP connections, launch denial of service attacks, scan ports, detect and measure connections, and detect Internet censorship, all from off-path vantage points requiring the attacker to have nothing more than an active Internet connection. 

A recent paper from the BSS center collects this history of exploits and the subsequent changes they drove in IPID selection methods. This paper also conducts a mathematical analysis of each selection method's correctness (does the method support unambiguous packet reassembly?), security (are sequences of IPID values sufficiently difficult to predict?) and performance (what are the method's time and space complexities?). However, this analysis assumes that packet interarrival times are Poisson-distributed, which is nice for mathematical analysis and reasonable for large-scale traffic, but is realistic for individual machines. This project explores what happens to this analysis when the network traffic model is adapted with more realistic properties (burstiness, long-range dependence, self-similarity, etc.).

# Research Goals

In AY25-26, the Biocomputing Scholars team successfully constructed Markov-Modulated Poison Process (MMPP)-based models of bursty network traffic for small datasets and derived IPID correctness and security probabilities that generalize to these models. It remains to (1) construct these models for large, realistic network traces, (2) evaluate and interpret the resulting IPID correctness and security properties, and (3) prepare a manuscript for publication.

# Skills Needed

Probability theory; Python; ability to read mathematically formal model descriptions; some networking familiarity

# Skills Gained

Mixed stochastic modeling; numerical methods; parallel computation in Python; network security and privacy; academic paper writing
