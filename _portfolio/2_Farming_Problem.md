---
title: "Solving the Farming Problem"
excerpt: "November 2019 - December 2019"
collection: portfolio
---

The farming problem is a classic stochastic linear programming problem. A farmer must decide how to allocate their land today in order to maximize profit (equivalenty minimize costs less revenue). However, the yields of the cropts will not be known until the crops are harvested in the future. This introduces uncertainty to the system. If we knew the yields, this would reduce to a simple linear program. To account for the uncertainty, we can consider a variety of randomly generated scenarios and optimize the expected value. As the final project of *MIE 1620 - Linear Programming & Network Flows*, I was tasked with implementing and investigating the performance of the Simplex Method, the Dantzig-Wolfe Decomposition, and the built-in Matlab LP solvers applied to this problem. The [final report](https://ameerd.github.io/files/MIE_1620_Final_Project_Github.html) finds that with larger cases, the Dantzig-Wolfe Decomposition's outperforms the Simplex Method by exploiting the strucutre of the problem though both methods are outperformed by the industrial solver. 
