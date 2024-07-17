---
layout: page
title: Automated deep learning
description: An automated soil sensing platform to analyze many soil properties.
img: assets/img/projects/project-auto-dl-0.jpeg
importance: 2
category: Past
related_publications: true
---

Deep learning models usually come with a large number of hyperparameters, and their selection is critical for their performance. To find the set of hyperparameters that generates optimal model performance, one needs to employ hyperparameter tuning, or optimisation (HPO).

This project developed HPO with Bayesian optimisation for the automated hyperparameter tunning for convolutional neural networks (CNN) {% cite shen2021automated %}.

<div class="row justify-content-sm-center">
    <div class="col-sm-6 mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/project-auto-dl-1.png" title="leg exoskeleton" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Building blocks of CNN. The number of different blocks and their internal hyperparameters are optimised.  
</div>
