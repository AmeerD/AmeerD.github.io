---
title: "CSEye: A Proposed Solution for Accurate and Accessible One-to-Many Face Verification"
collection: conferences
permalink: /conferences/CSEye
excerpt: 'Ameer Dharamshi, Rosie Yuyan Zou'
venue: 'AAAI-2019 Student Abstract Track'
paperurl: 'https://aaai.org/ojs/index.php/AAAI/article/view/5103'
citation: 
---

CSEye is a low-cost, one-to-many facial verfication model that addresses the one-to-many verification process using a unique, three-stage model architecture. First, a truncated VGG19 network extracts latent features from the suspect image and the candidate images. We then vectorize the extracted feature matrices and compute sets of differences based on angle, dot product, and element-wise distance measures. Finally, a dense network selects the optimal suspect-candidate match. CSEye was trained on randomly generated suspect-candidate sets from the [Labelled Faces in the Wild](http://vis-www.cs.umass.edu/lfw/) dataset. The angle and distance measures reliably produce accuracy rates exceeding 90% in initial tests with the angle measure reporting accuracies up to 98%. 

The idea behind CSEye was inspired by the final project for the University of Waterloo's Winter 2018 offering of *STAT 841: Statistical Learning - Classification*. We were challenged to develop a novel classification algorithm and demonstrate its ability in some domain. My team of three other students and myself decided to create a computer vision model addressing the problem of one-to-many face verification in a low-cost approach without compromising on accuracy. In this project, we extracted weights from the suspect and all candidate images with a CNN that employed a weight-sharing scheme. This structure ensured identical treatment of all images. The suspect features are then injected into a dense network as weights to influence the suspect-candidate match. This structure facilitates the interaction between the suspect weights and the candidate weights in the layer preceeding final classification. The [draft](http://rosiezou.com/441proj.html) of the initial CSEye project provides a detailed description of the model architecture and approach. The [Jupyter notebook](https://github.com/rosiezou/cvproj/blob/master/441proj.ipynb) containing the model and the [github repository](https://github.com/rosiezou/cvproj) are also available for viewing. 

The final camera-ready draft of the paper, *CSEye: A Proposed Solution for Accurate and Accessible One-to-Many
Face Verification*, can be [downloaded here](http://ameerd.github.io/files/CSEye_AAAI_2019_SA_412_CRC.pdf). A demo of the model is [provided here](https://github.com/AmeerD/CSEye/tree/master/Demo) for illustrative purposes.
