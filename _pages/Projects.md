---
layout: archive
title: "Engineering Projects"
permalink: /Projects/
author_profile: true
redirect_from:
  - /resume
---

My undergraduate engineering work focused on building robotic systems and deploying perception, mapping, and navigation algorithms on real hardware.

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

For collaboration or questions about these projects, please [get in touch](mailto:{{ site.author.email }}).
