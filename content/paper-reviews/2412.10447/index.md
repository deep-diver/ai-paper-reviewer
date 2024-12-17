---
title: "TidyBot++: An Open-Source Holonomic Mobile Manipulator for Robot Learning"
summary: "TidyBot++: Low-cost, open-source holonomic mobile base makes robot learning easier."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 Princeton University",]
showSummary: true
date: 2024-12-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.10447 {{< /keyword >}}
{{< keyword icon="writer" >}} Jimmy Wu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.10447" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.10447" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.10447/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Imitation learning holds great promise for robotics, but data collection remains a major bottleneck, especially for mobile manipulation tasks. Current mobile bases are costly, specialized for industrial use, and kinematically constrained. This makes them unsuitable and inaccessible for many researchers focusing on household environments.  A lack of affordable research hardware hinders the progress of real-world mobile manipulation research.  Easier data collection is critical to unlocking the potential of mobile manipulation for household robotics. 

This paper introduces **TidyBot++, an open-source, low-cost, and holonomic mobile manipulator designed for household tasks.**  It uses **powered casters**, enabling **unconstrained sideways movement**, unlike typical wheeled robots. This simplifies data collection and policy learning.  An intuitive **mobile phone teleoperation interface** facilitates easy data acquisition for imitation learning. The researchers show that **learned policies from this system successfully perform various common household tasks**, demonstrating the effectiveness of their design and its potential to accelerate mobile manipulation research.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Open-source design for an inexpensive, flexible, and holonomic mobile manipulator. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Intuitive mobile phone teleoperation interface for easy data collection. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrated successful learning of household manipulation tasks using the collected data. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper significantly lowers the barrier to entry for mobile manipulation research by open-sourcing a low-cost and easy-to-build holonomic mobile base.**  It addresses the limitations of existing commercial options and opens up exciting possibilities in data collection, policy learning, and human-robot interaction. The **phone-based teleoperation interface** provides an accessible and flexible data collection method, promoting further advancements in imitation learning and real-world robotics applications.  This design encourages more researchers to engage in this field, leading to more extensive datasets and more robust algorithms for mobile manipulation.

------
#### Visual Insights



![](https://arxiv.org/html/2412.10447/x1.png)

> 🔼 The figure shows the TidyBot++ mobile manipulator. The left image shows the holonomic base of the robot, featuring four powered caster modules arranged in a rectangular configuration. The rest of the images showcase the robot successfully performing various household tasks in a real-world environment. These tasks include opening a refrigerator, wiping a countertop, loading a dishwasher, taking out trash, watering a plant, and loading laundry.
> <details>
> <summary>read the caption</summary>
> Figure 1: We develop an open-source mobile manipulator with a holonomic base (left), and show that it can perform a variety of household tasks in a real apartment home (right).
> </details>





{{< table-caption >}}
| Specification | Ours | Stretch | Tracer | Ranger Mini | Husky | Fetch | Tiago |
|---|---|---|---|---|---|---|---| 
| Holonomic | Yes | No | No | No | No | No | Yes |
| Omnidirectional | Yes | No | No | Yes | No | No | Yes |
| Swappable arm | Yes | No | Yes | Yes | Yes | No | No |
| Footprint (cm) | 50x54 | 33x34 | 57x69 | 50x74 | 67x99 | 51x56 | 54x54 |
| Weight | 34 kg | 24.5 kg | 30 kg | 63 kg | 50 kg | 113 kg | 70 kg |
| Payload | 60 kg | 10 kg | 100 kg | 80 kg | 75 kg | — | — |
| Maximum speed | 1 m/s | — | 1.6 m/s | 1.5 m/s | 1 m/s | 1 m/s | 1 m/s |
| Runtime | 8 h | 2–5 h | 4 h | 7–8 h | 3 h | 9 h | 8–10 h |
| Cost | $5.4k | $25k | $7.6k | $13k | $20k | $100k | $100k |{{< /table-caption >}}

> 🔼 This table compares various mobile bases and mobile manipulators commonly used in research, including their holonomic capabilities, omnidirectional movement, arm swappability, footprint dimensions, weight, payload capacity, maximum speed, runtime, and cost. The comparison includes popular platforms like Stretch, Tracer, Ranger Mini, Husky, Fetch, Tiago, and the authors' proposed design. It aims to highlight the advantages and trade-offs of different mobile base designs, particularly for robot learning research.
> <details>
> <summary>read the caption</summary>
> Table 1: Mobile base and mobile manipulator comparison
> </details>





### In-depth insights


#### Holonomic Mobile Base
A **holonomic mobile base**, unlike nonholonomic platforms like differential or Ackermann drive, offers **unconstrained mobility**, controlling all planar degrees of freedom independently.  This characteristic grants significant advantages in robot learning and manipulation tasks.  **Enhanced maneuverability** simplifies navigation, allowing seamless lateral and rotational movement, crucial for tasks such as opening doors or approaching objects from various angles.  This **kinematic freedom** also simplifies data collection for imitation learning.  A holonomic base's ability to precisely and repeatably achieve desired poses (x, y, θ) streamlines data acquisition, as demonstrated by the successful training of policies on real-world household tasks.  Furthermore, using position control rather than velocity control with holonomic bases improves the learning process by simplifying policy representation and reducing noise sensitivity. This precision and stability are essential for transferring learned policies from simulation to real-world robots. Overall, a holonomic drive system proves invaluable for **efficient and robust mobile manipulation**.

#### Imitation Learning
**TidyBot++ leverages imitation learning** for mobile manipulation tasks.  Data collection is facilitated by a novel mobile phone teleoperation interface using WebXR, enabling intuitive control and mitigating drift issues observed in prior systems.  Experiments demonstrate successful policy training using diffusion policies with relatively few demonstrations (50-100), achieving high success rates across diverse real-world tasks like opening fridges, wiping countertops, and loading dishwashers. A key advantage of TidyBot++ is its holonomic base, which exhibits significant efficiency gains over differential drive in teleoperation and simplifies policy learning. This is evidenced by a head-to-head comparison in a wiping task, where the holonomic policy learns more effectively with the same amount of data, showcasing the importance of holonomic drive for robust mobile manipulation learning.

#### Phone Teleop
**TidyBot++ introduces an intuitive mobile phone teleoperation interface**, leveraging WebXR for real-time 6-DoF pose streaming. This interface maps phone motions to the robot's arm and holonomic base, enabling data acquisition for imitation learning. **WebXR's broad compatibility with Android and iOS devices eliminates the need for specialized controllers,** enhancing accessibility. Unlike prior systems like RoboTurk, which suffered from drift due to reliance on IMU data, TidyBot++'s integration of visual odometry alongside IMU data **mitigates drift** for precise control. This **phone-based approach streamlines data collection**, and offers researchers a flexible and cost-effective tool, potentially accelerating advancements in mobile manipulation through imitation learning.

#### Open-Source Design
This research paper introduces an **open-source design for a holonomic mobile manipulator**, aiming to facilitate **accessible and affordable** mobile manipulation research.  The key innovation lies in the **holonomic base**, which uses powered casters, enabling **omnidirectional movement** and precise control.  This offers advantages over traditional nonholonomic bases like differential drive, enhancing maneuverability and simplifying tasks like sideways motion for opening doors.  The design prioritizes **modularity and customizability**, allowing researchers to adapt the frame, integrate various sensors, and choose different arms based on research needs.  Leveraging readily available components from the FIRST Robotics Competition ecosystem ensures **cost-effectiveness and reliability** while accelerating assembly and repairs. The open-source nature, including hardware designs and control software, promotes **accessibility and reproducibility** in the field of mobile manipulation research.

#### Powered Caster Kinematics
**Powered caster kinematics** are crucial for understanding holonomic mobile base movement.  Each caster involves two revolute joints: **steering** and **rolling**. The steering joint dictates wheel orientation, while the rolling joint measures wheel rotation. Encoders on each motor and the steer axis provide joint position and velocity data. Unlike traditional powered caster vehicles with a single offset, this design incorporates a **two-dimensional offset**, improving maneuverability.  This approach simplifies design and construction while minimizing custom part needs, enhancing the accessibility of this holonomic base for robotics research.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.10447/extracted/6062410/figures/caster-wheels.png)

> 🔼 The figure shows a close-up illustration of a caster wheel, highlighting its key components and how they contribute to holonomic movement. The caster wheel is made up of rollers, which are small wheels attached around the periphery of the main wheel. These rollers are able to rotate freely, allowing the caster wheel to move in any direction without needing to reorient itself.  A simplified diagram to the right further illustrates the mechanism, showing the offsets and axes of rotation. The offset between the vertical axis of the swivel mechanism and the roll axis of the wheel is what makes the robot holonomic. This offset creates a lever arm, causing the wheel to trail behind the swivel axis as the robot moves, allowing the wheels to naturally align with the direction of motion.
> <details>
> <summary>read the caption</summary>
> Figure 2: A simplified illustration of caster wheels on a holonomic base.
> </details>



![](https://arxiv.org/html/2412.10447/x2.png)

> 🔼 The figure shows a CAD model of the holonomic mobile manipulator base. It highlights the modular components of the base which includes caster modules, power distribution board, a sealed lead acid (SLA) battery, T-slot extruded aluminum frames, a portable power station, and a computer. The base can carry up to 60kg payload and can be assembled within two days.
> <details>
> <summary>read the caption</summary>
> Figure 3: Our mobile base is designed to be modular and easily reconfigurable. It has very few components and can be assembled in 1 to 2 days.
> </details>



![](https://arxiv.org/html/2412.10447/x3.png)

> 🔼 This figure provides simplified isometric and top-down views of a caster wheel, illustrating its key components and parameters.  A caster wheel is a wheel mounted on a swiveling fork, allowing it to rotate freely. The wheel itself can also rotate, enabling movement. This figure highlights the caster offsets *b<sub>x</sub>* and *b<sub>y</sub>*, which are the horizontal distances between the swivel axis and the wheel's contact point with the ground. It also shows the wheel radius *r*, and the steer (*ϕ*) and roll (*ρ*) joint angles. Lastly, the placement of the caster module relative to the base's origin is given by (*h*, *β*), representing the polar coordinates of the module's center.
> <details>
> <summary>read the caption</summary>
> Figure 4: Isometric and top views of a simplified caster, showing the caster offsets bxsubscript𝑏𝑥b_{x}italic_b start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT and bysubscript𝑏𝑦b_{y}italic_b start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT, wheel radius r𝑟ritalic_r, steer and roll joints ϕitalic-ϕ\phiitalic_ϕ and ρ𝜌\rhoitalic_ρ, and caster module placement (h,β)ℎ𝛽(h,\beta)( italic_h , italic_β ) from the base origin.
> </details>



![](https://arxiv.org/html/2412.10447/x4.png)

> 🔼 This figure compares the paths taken by a holonomic mobile base and a differential drive base while performing a 'wipe countertop' task. The holonomic base, free from nonholonomic motion constraints, takes a shorter, more direct path (orange).  In contrast, the differential drive base (blue) is forced to follow a longer, less efficient path due to its inability to move directly sideways. This demonstrates the advantage of holonomic drive for maneuverability and efficiency in mobile manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: In the wipe countertop task, the differential drive robot is forced to take a less efficient path as it is subject to nonholonomic constraints.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.10447/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10447/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10447/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10447/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10447/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10447/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10447/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10447/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10447/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10447/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10447/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10447/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10447/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}