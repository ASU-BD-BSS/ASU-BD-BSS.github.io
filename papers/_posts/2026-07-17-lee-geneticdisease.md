---
layout: paper
title: "MechInterp Exploration of Genetic Disease Representation in Protein Models"
year: "2026-27"
shortref: "Heewook Lee"
authors: "Heewook Lee, Fredo Guan"
category: paper
published: true
tags: []
---
{% include JB/setup %}

# Background

A subset of genetic diseases are driven by missense mutations (DNA mutations that cause the encoded amino acid at a given position to change).
Because wild-type and disease-associated protein sequences often differ by only one or a few amino acids, missense-driven genetic diseases provide unusually controlled comparisons for interpretability experiments.
Well-studied diseases are especially useful because many variants already have clinical, functional, structural, or biochemical annotations. 

These models are typically based on the transformer, a flexible class of neural networks that have been used to model many other domains, ranging from text, images, and audio. The "T" in ChatGPT stands for transformer, specifically generative pretrained transformer, due to its optimization ("training") process to generate text given a prefix.
After training on large collections of minimally curated data, such as internet text for LLMs, protein and metagenomic sequence databases for PLMs, or experimentally determined structures for structure models, these models exhibit a diverse array of powerful emergent behaviors and representations, such as those seen in frontier LLM systems today.

Modern protein language models (pLMs) have demonstrated a wide variety of emergent capabilities after undergoing this pretraining process. These include:
- Producing cohesive representations of protein functions
- Identifying specific functional regions of the protein
- Editing nonfunctional proteins to be functional
- Generating proteins to perform a specific function
- Reducing a protein's sequence length while preserving its geometry and functionality
- Learning a sufficiently strong representation to allow for accurate predictions of protein structure

Given that many works have demonstrated these powerful emergent capabilities that are of high interest, relevance, and utility to biology and medicine, it raises the question of how such a model actually performs these tasks.
This is where we run into a major roadblock: transformer models are not "interpretable": they can produce useful predictions without revealing which internal representations or computations led to those predictions.
Since this is highly relevant for the oversight of frontier LLMs (addressing questions like "How did it do X?”, “Why is it right/wrong?”, “Is it showing problematic behavior?”, and “Is it hiding problematic behavior from us?”), researchers have developed techniques to try and understand how these transformer models work.

A common paradigm involves first selecting a specific task to focus on, such as correctly completing the prompt with a location's capital when asked "The capital of X is".
Researchers then produce a curated dataset of "clean" examples (examples showing the correct capital being output like "The capital of Arizona is Phoenix" and "The capital of China is Beijing") and "corrupt" examples (examples showing incorrect or nonsense outputs like "The capital of Arizona is Beijing", "The capital of Arizona is China", or "The capital of Arizona is strawberry").
These are then run through the model, allowing researchers to use a variety of techniques to assess how the model outputs the correct answer and how it avoids outputting incorrect answers.
These answer questions like how a model represents inputs and the target task, which parts of a model are important to the functionality, and how someone can disrupt a model's successful completion of the target task. 

In this project, the biological analog is to compare wild-type or benign missense variants against pathogenic or experimentally deleterious missense variants.
Because the sequences may differ by only one amino acid, these comparisons can help isolate which internal model features change when a mutation disrupts protein function.
We can also identify non-disease-causing missense mutations, allowing us to assess disease-causing mutations against background variation.
Existing work provides detailed data on gene variants for many genetic diseases, allowing for the data to easily be adapted for interpretability use.

Potential candidates include high visibility diseases:
- Cystic Fibrosis - Cystic fibrosis transmembrane conductance regulator (CFTR)
- Amyotrophic Lateral Sclerosis (ALS), SOD1 Subtype - Superoxide Dismutase 1 (SOD1)
- Phenylketonuria (PKU) - Phenylalanine Hydroxylase (PAH)
- Hemophilia B - Coagulation Factor IX (F9)

Lower visibility diseases:
- Adenosine Deaminase Deficiency/Severe Combined Immunodeficiency - Adenosine Deaminase (ADA)
- Gaucher Disease - Glucocerebrosidase (GBA1)
- Alpha-1 Antitrypsin Deficiency - Alpha-1 Antitrypsin (AAT)
- Fabry Disease - Alpha-galactosidase A (GLA)
- Rhodopsin-associated Retinitis Pigmentosa - Rhodopsin (RHO)
- Transthyretin Amyloidosis - Transthyretin (TTR)
- Myocilin-associated Glaucoma - Myocilin (MYOC)
- MCAD Deficiency - Medium-chain Acyl-CoA Dehydrogenase (MCAD/ACADM)
- CBS Deficiency/Classical Homocystinuria - Cystathionine beta-synthase (CBS)

And genes associated with hereditary tumor/cancer risk:
- Phosphatidylinositol-3,4,5-trisphosphate 3-phosphatase (PTEN) - PTEN Hamartoma Tumor Syndrome
- Tumor Protein p53 (TP53) - Li-Fraumeni Syndrome
- Von Hippel–Lindau Tumor Suppressor (pVHL) - Von Hippel–Lindau Disease
- CDKN2A/p16INK4A - Familial Melanoma, Pancreatic Cancer Disposition
- CHEK2 - breast, prostate, kidney, bladder, and other cancer risk
- BAP1 - BAP1 tumor predisposition syndrome, uveal melanoma, mesothelioma, renal cell carcinoma, other tumors
- PALB2 - breast and pancreatic cancer predisposition
- STK11/LKB1 - Peutz-Jeghers syndrome, pancreatic, gastrointestinal, breast, gynecologic cancers
- MUTYH - MUTYH-associated polyposis, colorectal cancer
- MSH2/MLH1 - Lynch syndrome
- BRCA1 (RING/BRCT domains)/BRCA2 - hereditary breast, ovarian, pancreatic, and prostate cancer

Some diseases are difficult to study for various biological/technical reasons:
- Sickle Cell Disease (protein complex, complex-complex interaction, driven by 1 mutation)
- Ehlers-Danlos Syndrome (protein complex)
- Marfan Syndrome (huge protein)
- Osteogenesis Imprefecta (protein complex)
- Duchenne Muscular Dystrophy - (mostly deletion/frameshift/truncation)
- Wilson Disease (huge protein, metal-binding)

# Research Goals

This project aims to apply established and novel interpretability techniques that have been developed for transformer-based LLMs to protein language models and protein structure models.
Each student may select one or a few diseases of interest, and will be responsible for curating data for the selected disease(s).
Experiments using this data will aim to answer questions such as "Can a model tell if a mutation is harmful?", "How does a model determine if a mutation is harmful or not?", "How does a model represent harmful mutations?", “Are predicted protein structures faithful to experimental structures?”, "Can we control the model to correct harmful mutations?", "Can we control the model to output harmful mutations?", "Do model-corrupted proteins resemble real corrupted proteins?", and so on.
The mentor will provide the tools and code to perform the interpretability experiments and analyses, while the students will be responsible for analyzing the resulting data and drawing conclusions.

Mechanistic interpretability (MechInterp) is technically challenging and requires careful controls, skepticism, and a high standard of evidence.
The project will be scaffolded, but students should expect ambiguity, failed hypotheses, and careful iteration.
This will likely be a challenging, integrative, and highly rewarding project for anyone interested; biological models are one of the most promising applications for mechanistic interpretability.
For background on the underlying interpretability techniques, see [Anthropic’s Transformer Circuits materials](https://transformer-circuits.pub/).
These resources focus mostly on LLMs rather than protein models, but they illustrate the style of mechanistic evidence and causal analysis this project will draw from.
A noteworthy example of explained behaviors and identified mechanisms is [*On the Biology of a Large Language Model*](https://transformer-circuits.pub/2025/attribution-graphs/biology.html).

# Skills Needed

Applicants should have a diverse pool of backgrounds.
No student is expected to already know both machine learning and molecular biology.
Preferred candidates should have strong interest/drive, strong biology, biomedical engineering, or pre-med background with some exposure to machine learning preferred, vice-versa acceptable, demonstrated ability to learn independently, and an ability to use generative AI tools responsibly.
Academic, clinical, or personal motivation related to genetic disease is welcome, but no personal disclosure is expected or required.
A substantial part of the project will involve careful biological literature review, variant curation, and validation against known protein mechanisms; students looking only to run large models without engaging deeply with disease biology and/or model internals are unlikely to be a good fit.

# Skills Gained

Skills in computational biology research, machine learning, protein modeling, protein biology, and mechanistic interpretability, a better understanding of modern AI systems, and a better understanding of the specific disease(s) being studied.
