---
layout: archive
title: "Engineering Projects"
permalink: /Projects/
author_profile: true
redirect_from:
  - /resume
---

My undergraduate engineering work focused on building robotic systems and deploying perception, mapping, and navigation algorithms on real hardware.

## Intelligent Controller Integration for Heterogeneous Unmanned Systems

**Science and Technology Innovation 2030 — New Generation Artificial Intelligence**

**Task period:** June 2022 – May 2025

At Tsinghua University, I worked on SLAM deployment and system integration for a UAV–manipulator demonstration platform. The research task brought together object recognition, manipulation, and outdoor mapping to validate intelligent controllers for heterogeneous unmanned systems.

<a href="{{ '/projects/tsinghua-controller/' | relative_url }}"><img src="{{ '/images/projects/tsinghua-controller/flight-and-grasping.jpg' | relative_url }}?v=wm1" alt="UAV manipulator platform during an outdoor flight demonstration" loading="lazy" style="width:100%;max-width:640px;height:auto;"></a>

[Project details and three demonstration videos]({{ '/projects/tsinghua-controller/' | relative_url }})

## Autonomous UAV Exploration and Navigation

I developed a UAV system for autonomous navigation, obstacle avoidance, and exploration mapping using visual and point-cloud data.

**My contributions**

- Assembled the airframe and integrated the LiDAR, cameras, onboard computer, power supply, GPS, and flight controller, including wiring and soldering.
- Set up ground-station workflows for point-to-point navigation, takeoff, and landing, and configured remote access using SSH and NoMachine.
- Integrated a D435i camera and flight-controller IMU for VINS-Fusion localization, and deployed VINS-Mono and ORB-SLAM for visual localization and mapping.
- Deployed EGO-Planner and Fast-Planner for motion planning, and combined laser altitude measurements with 2D mapping for indoor localization and navigation.

**Results:** Demonstrated flight and obstacle avoidance in cluttered environments, including wooded areas, and reconstructed campus scenes in 3D.

## Autonomous Ground Robot Navigation with SLAM and Computer Vision

I developed a ROS-based navigation system using LiDAR and depth cameras, with both simulation and real-world experiments.

**My contributions**

- Encapsulated the vehicle's low-level Ackermann steering controls in a callable SDK and integrated navigation workflows using Autoware and move_base.
- Deployed Gmapping, Hector SLAM, and Cartographer for 2D mapping, and LIO-SAM and LeGO-LOAM for 3D mapping.
- Implemented global planning with A* and Dijkstra, along with local planning using inflated point-cloud obstacles.
- Integrated AR marker detection, KCF tracking, human skeleton tracking, YOLO-based sign detection, and gesture control; deployed RTAB-Map for visual mapping and navigation.

**Results:** Demonstrated map-based autonomous driving across campus on paved roads, including concrete and asphalt surfaces.

## Small Projects from My First Three Undergraduate Years

A collection of early robotics demos and reproduction exercises:

- **Line-following mobile grasping:** A physical robot demonstration.
- **PPO-based UAV gate traversal:** Policy training and deployment in simulation.
- **NeurIPS 2019 Drone Challenge solution reproduction:** A simulated drone-racing exercise.
- **Unreal Engine UAV tests:** Takeoff, landing, flight paths, multi-drone control, and trajectory fitting.
- **Campus scene mapping:** Point-cloud visualization in RViz.

<a href="{{ '/projects/undergraduate-demos/' | relative_url }}"><img src="{{ '/images/projects/undergraduate-demos/line-following-grasping.jpg' | relative_url }}?v=wm1" alt="Early undergraduate mobile robot demo on a line-following course" loading="lazy" style="width:100%;max-width:640px;height:auto;"></a>

[Explore five small projects and six demo videos]({{ '/projects/undergraduate-demos/' | relative_url }})

For collaboration or questions about these projects, please [get in touch](mailto:{{ site.author.email }}).
