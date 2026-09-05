---
layout: single
title: "Intelligent Controller Integration for Heterogeneous Unmanned Systems"
permalink: /projects/tsinghua-controller/
author_profile: true
---

## Project background

This work formed part of **Science and Technology Innovation 2030 — New Generation Artificial Intelligence**, a national major project in China.

| Item | Description |
| --- | --- |
| Research task | Integration and validation of high-end intelligent controllers for cross-domain heterogeneous autonomous unmanned systems |
| Parent project | Open, general-purpose high-end intelligent controllers for autonomous unmanned systems |
| Task period | June 2022 – May 2025 |
| Program management | High Technology Research and Development Center, Ministry of Science and Technology, China |
| Demonstration platform | Multi-rotor UAV with a robotic manipulator |

The dates above describe the research task's execution period. My involvement was through research work at Tsinghua University, beginning in 2024.

The project investigated adaptable intelligent controllers and their hardware/software integration across heterogeneous unmanned platforms. The UAV–manipulator demonstration brought together perception, mapping, and manipulation for field validation.

## My engineering work

My work included deploying SLAM algorithms on onboard computing platforms, integrating robot communication, and supporting camera–arm calibration and object-grasping demonstrations. This involved visual and LiDAR mapping workflows, including ORB-SLAM and FAST-LIO, and integration of a depth camera with the robotic manipulator.

## Validation overview

The presentation documents three areas of platform validation:

- **Object recognition:** A UAV-view dataset containing 2,200 images across five object categories for an explosive-ordnance-disposal application, with a YOLOv5 demonstration on the controller.
- **Manipulation:** Repeated object-grasping demonstrations using the integrated UAV–manipulator platform. The presentation reports a validation procedure of ten successful grasping cycles for each of four object categories, with object positions changed between attempts.
- **Outdoor mapping:** A FAST-LIO field trial covering an area exceeding 1,000 m², illustrated with outdoor flight footage and reconstructed point clouds.

The task's assessment requirements included a target detection rate of at least 95%, at least three supported functions, and SLAM coverage of at least 1,000 m², to be assessed through third-party testing. These are **assessment requirements**, rather than a claim that the clips below constitute a full acceptance report.

## Demonstrations

### Repeated grasping

<video controls playsinline preload="none" poster="{{ '/images/projects/tsinghua-controller/repeated-grasping.jpg' | relative_url }}" style="display:block;width:100%;max-height:520px;object-fit:contain;" aria-label="Repeated grasping demonstration">
  <source src="{{ '/images/projects/tsinghua-controller/repeated-grasping.mp4' | relative_url }}" type="video/mp4">
  <a href="{{ '/images/projects/tsinghua-controller/repeated-grasping.mp4' | relative_url }}">Open the grasping video</a>
</video>

A short excerpt from the repeated-grasping demonstration.

### Flight and grasping platform demonstration

<video controls playsinline preload="none" poster="{{ '/images/projects/tsinghua-controller/flight-and-grasping.jpg' | relative_url }}" style="display:block;width:100%;max-height:520px;object-fit:contain;" aria-label="UAV manipulator flight demonstration">
  <source src="{{ '/images/projects/tsinghua-controller/flight-and-grasping.mp4' | relative_url }}" type="video/mp4">
  <a href="{{ '/images/projects/tsinghua-controller/flight-and-grasping.mp4' | relative_url }}">Open the flight demonstration</a>
</video>

Outdoor flight footage of the UAV–manipulator platform.

### Outdoor flight for mapping validation

<video controls playsinline preload="none" poster="{{ '/images/projects/tsinghua-controller/flight-mapping.jpg' | relative_url }}" style="display:block;width:100%;max-height:520px;object-fit:contain;" aria-label="Outdoor UAV mapping field trial">
  <source src="{{ '/images/projects/tsinghua-controller/flight-mapping.mp4' | relative_url }}" type="video/mp4">
  <a href="{{ '/images/projects/tsinghua-controller/flight-mapping.mp4' | relative_url }}">Open the mapping field-trial video</a>
</video>

Outdoor flight footage associated with the FAST-LIO mapping trial.

[Back to projects]({{ '/Projects/' | relative_url }})
