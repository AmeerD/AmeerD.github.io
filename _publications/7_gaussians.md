---
title: "Decomposing Gaussians with Unknown Covariance"
excerpt: ""
collection: publications
permalink: /publications/gaussians
excerpt: 'Ameer Dharamshi, Anna Neufeld, Lucy L. Gao, Jacob Bien, Daniela Witten'
date: 2025-06-16
published: 'F'
venue: 'Biometrika'
paperurl: 'https://arxiv.org/abs/2409.11497'
citation: 
---

Abstract: Common workflows in machine learning and statistics rely on the ability to partition the information in a dataset into independent portions. Recent work has shown that this may be possible even when conventional sample splitting is not; e.g., when the number of samples n = 1, or when observations are not independent and identically distributed. In the case of multivariate Gaussian data, these alternatives to sample splitting require knowledge of the covariance matrix. In many important problems, such as in spatial or longitudinal data analysis, and graphical modelling, the covariance matrix may be unknown and even of primary interest. Thus, in this work we develop new approaches to decompose Gaussian distributions with unknown covariance. First, we present a general algorithm that encompasses all previous decomposition approaches for Gaussian data as special cases, and can further handle the case of an unknown covariance. It yields a new and more flexible alternative to sample splitting when n > 1. When n = 1, we prove that it is impossible to partition the information in a multivariate Gaussian distribution into independent portions without knowing the covariance matrix. Thus, we use the general algorithm to decompose a single multivariate Gaussian distribution with unknown covariance into dependent parts with tractable conditional distributions, and demonstrate their use for inference and validation. The proposed decomposition strategy extends naturally to Gaussian processes. In simulation and on electroencephalography data, we apply these decompositions to the tasks of model selection and post-selection inference in settings where alternative strategies are unavailable.

The paper can be accessed [here](https://doi.org/10.1093/biomet/asaf057).
