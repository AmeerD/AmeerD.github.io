---
title: "Sampling by Divergence Minimization"
collection: preprints
permalink: /preprints/ScoutMCMC
excerpt: 'Ameer Dharamshi, Vivian Ngo, Jeffrey S. Rosenthal'
paperurl: 'https://osf.io/preprints/socarxiv/at368/'
citation: 
---

Abstract:
We introduce a Markov Chain Monte Carlo (MCMC) method that is designed to sample from target distributions with irregular geometry using an adaptive scheme. In cases where targets exhibit non-Gaussian behaviour, we propose that adaption should be regional rather than global. Our algorithm minimizes the information projection component of the Kullback-Leibler (KL) divergence between the proposal and target distributions to encourage proposals that are distributed similarly to the regional geometry of the target. Unlike traditional adaptive MCMC, this procedure rapidly adapts to the geometry of the target's current position as it explores the surrounding space without the need for many preexisting samples. The divergence minimization algorithms are tested on target distributions with irregularly shaped modes and we provide results demonstrating the effectiveness of our methods.

The paper in its entirety can be accessed [here](https://arxiv.org/abs/2105.00520). Supporting code and model documentation can be found in the [ScoutMCMC Github repository](https://github.com/AmeerD/Scout-MCMC).
