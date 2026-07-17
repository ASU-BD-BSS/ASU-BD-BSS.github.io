---
layout: paper
title: "A Unified Hard-Negative Generation Framework for TCR–pMHC, Antibody–Antigen, and Drug–Target Binding Prediction"
year: "2026-27"
shortref: "Heewook Lee"
authors: "Heewook Lee, Muhammed Hunaid Topiwala"
category: paper
published: true
tags: []
---
{% include JB/setup %}

# Background

Computational binding-prediction models for TCR–pMHC, antibody–antigen, and drug–target interactions report strong in-distribution accuracy but fail on out-of-distribution targets.
Recent benchmarks show every leading TCR–pMHC predictor collapsing to within 0.66 ± 0.04 AUROC on unseen peptides; analogous collapses are reported in antibody–antigen and drug–target benchmarks.

The three problems have identical mathematical structure: a receptor space, a ligand space, sparse experimental positives, constructed negatives, and a shortcut induced by how the negatives were drawn.
Recent work confirms none of these crosses domains, and no shared metric exists for comparing negative-source robustness across them.

The mechanism is shared across the three domains: training negatives are constructed by sampling strategies.
Negative sampling strategies like peptide shuffling for TCR–pMHC, random mismatching for antibody–antigen, property-matched decoys for drug–target where each of which induces a domain-specific shortcut (V-gene composition, surface properties, molecular weight) that the model learns instead of binding rules.

# Research Goals

Scholars will develop a unified framework that handles both hard-negative generation and cross-domain shortcut-resistance evaluation.
Concretely, scholars will investigate per-domain generators, a shared benchmark that runs predictor AUROC across five negative-sampling strategies on the same positives, with coefficient of variation (CoV) as the headline robustness metric.

# Skills Needed

Familiarity with any machine learning and natural language processing.

# Skills Gained

Model training, hypothesis generation, statistical testing
