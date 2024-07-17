---
layout: page
title: Saving walking metabolic cost
description: Designed and modelled a walking assistance device to reduce the metabolic cost of human walking.
img: assets/img/projects/project-walking-0.jpeg
importance: 7
category: Past
related_publications: true
---

Reducing the metabolic cost of walking has long been a challenge for exoskeleton researchers. In a recent breakthrough, a passive exoskeleton was reported, which yielded significant energy saving with a clutch-spring mechanism working in parallel with calf muscles.

In this project, we investigate whether the same biomechanism exists in the hip and knee joints {% cite shen2018simulation %}. We employed OpenSim, an open-source platform, and the MATLAB Optimization Toolbox to determine the engaging and disengaging timings and optimize the stiffness of the springs for walking energetic efficiency. When applied to the ankle joint, the proposed approach yielded results that agreed with the reported ones. We then extended this method to the hip and knee joints. The simulations showed that the springs could save up to 6.38%, 4.85%, and 7.63% for the ankle, knee, and hip joints at the optimal stiffness of 8.20 kN /m, 7.35 kN /m, and 4.15 kN/m, respectively.

<div class="row justify-content-sm-center">
    <div class="col-sm-6 mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/project-walking-1.png" title="leg exoskeleton" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Performance of the clutch-spring mechanism. 
</div>
