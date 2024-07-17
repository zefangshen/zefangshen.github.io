---
layout: page
title: Leg exoskeleton
description: An wearable robot to support the rehabilitation of lower limbs.
img: assets/img/projects/project-leg-exo-1.png
importance: 5
category: Featured
related_publications: true
---

Exoskeletons can assist wearers to relearn natural movements when attached to the human body. Most current devices are bulky and heavy, which limit their application.
This project aimed to develop light-weight and simple mechanical linkages to mimic the human's leg motions for a wearable robot, i.e. leg exoskeleton, to support rehabilitation in the lower limbs.

The project integrated type and dimensional synthesis to design one degree-of-freedom (DOF) linkages consisting of only revolute joints with multiple output joints for compact exoskeletons. Type synthesis starts from a four-bar linkage where the output link generates the first angular output. Then, an RRR dyad is connected to the four-bar linkage for the second angular output while ensuring that the overall DOF of the new mechanism is 1. A third output joint is added in a similar manner. During each step, dimensional synthesis is formulated as a constrained optimization problem and solved via genetic algorithms. The approach is detailed in {% cite shen2018integrated %}

Using the above approach we developed a leg exoskeleton based on an 8-bar-10-joint linkage to reproduce a natural walking gait at the hip and knee joints. We then manufactured the exoskeletons to validate the proposed approach

<div class="row justify-content-sm-center">
    <div class="col-sm-6 mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/project-leg-exo-1.png" title="leg exoskeleton" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Left, 3D design of the leg exoskeleton. Right, the manufactured leg exoskeleton. 
</div>
