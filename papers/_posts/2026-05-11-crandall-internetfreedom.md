---
layout: paper
title: "Adapting Network Protocols for Internet Freedom"
year: "2026-27"
shortref: "Jedidiah Crandall"
authors: "Jedidiah Crandall, Siddharth Ghule"
category: paper
published: true
tags: []
---
{% include JB/setup %}

# Background

Network Intrusion Detection Systems (NIDS) are responsible for detecting and blocking unauthorized traffic on protected networks.
They do this by analyzing various features of network flows, like the three-way TCP handshake, for suspicious patterns.
However, it is an imperfect system.
Small modifications to standard network protocols can trick NIDS into allowing traffic that should have been disallowed (a false negative) or blocking traffic that should have been allowed (a false positive).

# Research Goals

The scholar team will investigate modern NIDS and Network Address Translation (NAT) systems to identify cases where they behave unexpectedly, then apply these to applications in Internet freedom research.
For example, issues stemming from TCP could become a fingerprinting technique for measuring Internet censorship.

# Skills Needed

Basic systems and networking skills, including virtual machine management and Wireshark; basic knowledge of network protocols (e.g., the three-way TCP handshake); solid Python programming

# Skills Gained

low-level network protocol knowledge; network protocol hacking
