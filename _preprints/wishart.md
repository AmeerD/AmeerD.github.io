---
title: "Thinning a Wishart Random Matrix"
excerpt: ""
collection: preprints
permalink: /preprints/wishart
excerpt: 'Ameer Dharamshi, Anna Neufeld, Lucy L. Gao, Daniela Witten, Jacob Bien'
paperurl: 'https://arxiv.org/abs/2502.09957'
citation: 
---

Abstract: Recent work has explored data thinning, a generalization of sample splitting that involves decomposing a (possibly matrix-valued) random variable into independent components. In the special case of a n×p random matrix with independent and identically distributed $N_p(\mu,\Sigma)$ rows, Dharamshi et al. (2024a) provides a comprehensive analysis of the settings in which thinning is or is not possible: briefly, if Σ is unknown, then one can thin provided that $n>1$. However, in some situations a data analyst may not have direct access to the data itself. For example, to preserve individuals' privacy, a data bank may provide only summary statistics such as the sample mean and sample covariance matrix. While the sample mean follows a Gaussian distribution, the sample covariance follows (up to scaling) a Wishart distribution, for which no thinning strategies have yet been proposed. In this note, we fill this gap: we show that it is possible to generate two independent data matrices with independent $N_p(\mu,\Sigma)$ rows, based only on the sample mean and sample covariance matrix. These independent data matrices can either be used directly within a train-test paradigm, or can be used to derive independent summary statistics. Furthermore, they can be recombined to yield the original sample mean and sample covariance.

The preprint can be downloaded [here](https://arxiv.org/abs/2502.09957).
