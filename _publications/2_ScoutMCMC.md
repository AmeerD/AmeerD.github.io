---
title: "Sampling by Divergence Minimization"
collection: publications
permalink: /publications/ScoutMCMC
excerpt: 'Ameer Dharamshi, Vivian Ngo, Jeffrey S. Rosenthal'
date: 2023-04-21
venue: 'Communications in Statistics - Simulation and Computation'
paperurl: 'https://www.tandfonline.com/eprint/JSEMV7JJZ7WXDT6I8DAM/full?target=10.1080%2F03610918.2023.2199352'
citation: 
---

Abstract:
We introduce a Markov Chain Monte Carlo (MCMC) method that is designed to sample from target distributions with irregular geometry using an adaptive scheme. In cases where targets exhibit non-Gaussian behaviour, we propose that adaption should be regional rather than global. Our algorithm minimizes the information projection component of the Kullback-Leibler (KL) divergence between the proposal and target distributions to encourage proposals that are distributed similarly to the regional geometry of the target. Unlike traditional adaptive MCMC, this procedure rapidly adapts to the geometry of the target's current position as it explores the surrounding space without the need for many preexisting samples. The divergence minimization algorithms are tested on target distributions with irregularly shaped modes and we provide results demonstrating the effectiveness of our methods.

The paper can be accessed [here](https://www.tandfonline.com/eprint/JSEMV7JJZ7WXDT6I8DAM/full?target=10.1080%2F03610918.2023.2199352). Supporting code and model documentation can be found in the [ScoutMCMC Github repository](https://github.com/AmeerD/Scout-MCMC).
