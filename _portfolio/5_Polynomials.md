---
title: "Overparameterizing Polynomial Interpolation"
excerpt: "To infinity and beyond!"
collection: portfolio
---

Conventional statisitcal wisdom tells us that overparameterizing a model results in high variance and poor generalization. In other words, the model overfits the training data. However, recent works have demonstrated empirically that as the number of parameters approaches the interpolation limit, the population risk diverges. Interestingly, the risk descends beyond the interpolation limit and in certain cases, the global minimum is achieved in the overparameterized region. In this work, we turn to classic interpolating functions, polynomials, to observe whether they benefit from overparameterizing. Given that there are an infinite number of overparameterized solutions, we consider the minimum norm solutions. We find that when using basic Vandermonde features, the risk diverges as seen in the following plots:

![](https://ameerd.github.io/images/Vandermonde.png)

However, when we consider Legendre features, the polynomials do converge asymptotically:

![](https://ameerd.github.io/images/Legendre.png)

The report can be found [here](https://ameerd.github.io/files/Polynomial_Interpolation_Report.pdf).
