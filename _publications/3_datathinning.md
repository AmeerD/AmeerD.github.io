---
title: "Data thinning for convolution-closed distributions"
collection: publications
permalink: /publications/datathinning
excerpt: 'Anna Neufeld, Ameer Dharamshi, Lucy L. Gao, Daniela Witten'
date: 2024-04-07
published: T
venue: 'Journal of Machine Learning Research'
paperurl: 'https://jmlr.org/papers/v25/23-0446.html'
citation: 
---

Abstract: We propose data thinning, a new approach for splitting an observation into two or more independent parts that sum to the original observation, and that follow the same distribution as the original observation, up to a (known) scaling of a parameter. This proposal is very general, and can be applied to any observation drawn from a "convolution closed" distribution, a class that includes the Gaussian, Poisson, negative binomial, Gamma, and binomial distributions, among others. It is similar in spirit to -- but distinct from, and more easily applicable than -- a recent proposal known as data fission. Data thinning has a number of applications to model selection, evaluation, and inference. For instance, cross-validation via data thinning provides an attractive alternative to the "usual" approach of cross-validation via sample splitting, especially in unsupervised settings in which the latter is not applicable. In simulations and in an application to single-cell RNA-sequencing data, we show that data thinning can be used to validate the results of unsupervised learning approaches, such as k-means clustering and principal components analysis.

The paper can be downloaded [here](https://jmlr.org/papers/v25/23-0446.html).
