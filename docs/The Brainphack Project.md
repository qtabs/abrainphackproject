# The Brainphack Project

P-hacking refers to the practice of selectively reporting or analyzing data until statistical significance is achieved, often inflating false positives. Despite its prevalence, quantifying the extent of p-hacking within published literature remains difficult. This project introduces a novel metric, the estimated _P-Hacking Attempt-Insistence-Length_ (phail), defined as the expected number of times researchers would need to rerun their analyses to obtain the number of significant results reported in a paper. Computing phail provides an estimate of how difficult a paper would be to replicate, with higher phail values signalling studies that demand substantially more effort to replicate. We will apply this measure to a sample of highly cited behavioural and cognitive neuroscience studies to estimate field-level trends in p-hacking effort. The project will produce a library that computes the phail, providing an accessible resource for researchers and meta-scientists. If time allows, we will begin automating the full workflow from paper to index computation. Ultimately, this project aims to deliver a practical tool for assessing research reliability, supporting transparency for authors, reviewers, and editors.

## Goals

1. Define and formalise the P-Hacking Attempt-Insistence-Length (phail)
2. Think of a better name/acronym (BNA) for the phail
3. Select a set of papers using linear mixed-effects (LME) models for testing
4. Code the analysis pipelines of the selected papers and use simulations to estimate BNA
5. Create visualisations summarising the BNA distribution across studies (hopefully N > 20)
6. Scale up the code to an open-source library for the general computation of BNA on LMEs
7. Devise a very cool name and acronym for the library
8. Explore automation of the end-to-end paper → BNA computation pipeline
9. Draft a short report detailing motivation, methods, findings, and next steps

## Main Components

### Literature collection (easy/medium)
1. Gathering a representative sample of highly cited behavioural and cognitive neuroscience papers, extracting reported statistical results and methodological details.
2. Code the paper's analysis pipelines that are ready for automatic processing.

### Definition and formalisation of the phail metric (easy)
1. Translating the conceptual idea of "p-hacking attempt insistence length" into a computable quantitative index.
2. Find a cooler name and acronym for the index

### Computation and estimation pipeline (medium/hard)
1. Developing and testing algorithms to estimate phail from reported statistics and study designs, including iterative simulation or inference methods.
2. Generating summary statistics and plots

### Library development (medium/hard)
1. Implementing the phail computation as an open-source library with clear APIs and documentation.
2. Summarise the commonly-occurring components of the paper-specific analysis pipelines into modules

### Reporting (easy)
1. Write an introduction to the index and main idea of the project for a potential manuscript
2. Write the methods section
3. Write a first draft of the results and discussion
4. Prepare the slides for the Brainhack project presentations

## Milestones

### Day 1
- Assign teams for the different components of the project
- Define the _phail_ metric conceptually and outline how it will be computed
- Identify and collect a small test set of target papers (e.g., 5–10)
- Code the generation of null-hypothesis-data for at least one type of data used in the papers
- Implement the analysis pipeline for at least one study
- Set up shared repository and code skeleton for the library
- Write the introduction for the manuscript

### Day 2
- Expand the paper dataset to at least 20 papers
- Expand the null-hypothesis-data generator to all types of data present in the papers
- Implement the analysis pipeline for at least 10 of the studies
- Extract reported results from all test papers (e.g., sample sizes, p-values, effects)
- Implement a minimal working version of the phail computation pipeline
- Write the methods section of the manuscript

### Day 3
- Refactor the analysis pipelines to a modular library
- Implement the analysis pipelines for the rest of the studies using the library
- Compute *phail* for all the papers in dataset
- Produce summary plots and quick field-level patterns
- Write the draft of the results and discussion sections of the manuscript
- Prepare the slides for the project presentations

## Skills and Knowledge Participants Will Gain

1. Open science mindset: Understanding p-values, p-hacking, research transparency, and reproducibility issues in cognitive neuroscience.
2. Metric development: Designing and formalising quantitative indices from conceptual ideas
3. Collecting and structuring reported methodological pipelines from published papers
4. Python programming and library development: Writing reusable code for computations and interacting with other programming languages from Python

## Contributing

We welcome contributions from all participants! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for information on how to add yourself as a contributor to this project.

## License

_To be determined_
