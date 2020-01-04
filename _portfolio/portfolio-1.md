---
title: "Gadsby Text Mining"
excerpt: "September 2017 - June 2018"
collection: portfolio
---

Having thoroughly enjoyed *STAT 442 - Data Visualization* in Fall 2016, I approached Professor Wayne Oldford upon returning to university the following Fall semester to work on a project together. After discussing interesting datasets available and thinking about what may be useful from a curriculum perspective, we settled on a text mining project. We decided to perform a decomposition of the book *Gadsby* by Ernest Vincent Wright. *Gadsby* is known as *A Story of Over 50,000 Words Without Using the Letter "E"*. This interesting quirk was the perfect starting point for analysis.

*Gadsby*'s raw text was extracted from [Wikisource](https://en.wikisource.org/wiki/Gadsby) and then pre-processed using [tidytext principles](https://www.tidytextmining.com/index.html). The text is decomposed on a character, word and bi-gram basis. We then analyze the frequencies of each of the decompositions to identify patterns in writing stype and to verify the book's claim to fame (Spoiler Alert: There are actually 4 letter "E"'s). It is quite interesting to note that the author avoids using the word "the" by referencing objects indirectly using the word "a" and taking steps to identify which specific object is being referenced. We then considered additional features such as the tf-idf statistic, basic sentiment analysis and considered a probabilistic approach to letter frequency as a thought experiment. The results are summarized in a series of visualizations in report format.

The [final report](https://ameerd.github.io/files/Gadsby_Project.html) discusses the process, findings, and learning outcomes of the Gadsby project. The RMarkdown file used to generate the report along with the associated R code can be found [here](https://github.com/AmeerD/Gadsby).
