---
marp: true
theme: UoS
---

# Introduction to Systematic Design of Multi-Component Systems

Dr Nawfal Al Hashimy

---

### Intended Learning Outcomes (ILO)

By the end of this lecture, students will be able to:

- Define systematic and systemic design in the context of multi-component systems.
    
- Identify the differences between monolithic and distributed design approaches.
    
- Describe the key phases of a systematic design process.
    
- Explain the importance of interfaces and coordination in distributed system development.
    
- Evaluate tools and methods used to support the systematic design of complex systems.
    
- Apply a systematic design process to a simplified real-world engineering problem.
    

---

### 1. Introduction

Designing modern engineering systems often involves combining mechanical, electrical, and software components, each with its own functional logic and physical constraints. 

A mobile robot, for example, may contain a motion controller, sensors, actuators, communication links, and onboard processing. Such systems cannot be designed effectively without breaking the problem down, coordinating sub-systems, and validating their integration. 

---
# hello 
<div class="twocols">

## LHS Title
- item
- item
- item
- item

<p class="break"></p>

## RHS Title
- item
- item
- item
- item
</div>
---




---

This lecture introduces students to the theory and practice of systematic design, particularly for systems made up of multiple interdependent components.

Systematic design is not simply a way to document a design process. It is a foundational approach that ensures reliability, scalability, and integration across subsystems. When applied to multi-component systems, systematic design is crucial for managing complexity, coordinating distributed teams, and ensuring that each subsystem contributes effectively to the global performance objectives.

---

### 2. Systems Thinking and Systemic Design Principles

Systems thinking underpins the practice of systematic design. It emphasises the interdependence of components, emergent behaviour, and feedback loops within complex systems (Meadows, 2008). Systemic design integrates systems thinking with human-centred and context-aware design strategies. Ryan (2014) defines systemic design as a practice that applies systems theory to high-order design problems involving multiple stakeholders.

A common systemic design mindset includes:

- Acknowledging interconnections (Barbero, 2018)
    
- Redefining waste as a resource (Bistagnino, 2017)
    
- Designing self-organising systems (Jones, 2014b)
    
- Using feedback as a guide to adaptive improvement
    

These principles are increasingly important as engineers face challenges that are not purely technical but socio-technical, requiring both human and machine systems to work harmoniously.

---

### 3. Understanding Multi-Component Systems

A multi-component system is composed of physically or functionally distinct elements that work together to deliver a complete functionality. Examples include automotive systems (e.g., engine control, braking, navigation), aerospace systems, and manufacturing systems.

These systems require designers to:

- Manage interdependencies
    
- Decompose the overall functionality into discrete but interacting blocks
    
- Define interfaces
    
- Optimise subsystem performance without compromising system integration
    

Krischer et al. (2024) demonstrate this using a robotic arm composed of four components with 6 DOF stiffness interfaces. They show how decomposing the problem reduces computational cost and allows parallel development.

---

### 4. Monolithic vs Distributed Design

Monolithic design tackles the entire system in one global optimisation problem. While theoretically optimal, this approach becomes computationally expensive and practically infeasible for large systems due to the number of variables and constraints (Martins & Ning, 2022).

In contrast, distributed design breaks the system into components or modules, optimising them separately. A challenge of distributed design is ensuring consistency and convergence to system-level goals. Informed Decomposition (Krischer et al., 2024) addresses this by using meta models trained offline to predict mass and feasibility, thus guiding component design without coordination overhead.

This shift from global to local design parallels organisational design: individual teams can work on parts as long as shared protocols and interfaces are respected.

---

### 5. The Systematic Design Process

The systematic design process can be represented in the following stages:

1. **Inquiry** – Understand system context, user needs, and constraints
    
2. **Framing & Requirements Gathering** – Define the scope, boundaries, and stakeholder expectations
    
3. **System Architecture & Interface Definition** – Decompose system into components; define interaction contracts
    
4. **Component Design & Optimisation** – Apply appropriate methods (e.g., FEA, simulation, surrogate modelling)
    
5. **Integration & Testing** – Assemble components, verify performance against system requirements
    
6. **Feedback & Iteration** – Use simulation and real-world data to refine models
    

This structure aligns with both industry practices and the systemic design frameworks reviewed by Smith & Kalantidou (2023).

---

### 6. Tools Supporting Systematic Design

To support these phases, engineers and designers use a range of tools:

- **SysML / MBSE tools**: For modelling component relationships and constraints (e.g., Cameo Systems Modeler)
    
- **Simulation software**: MATLAB, COMSOL, ANSYS, or Gazebo for co-simulation
    
- **Giga-mapping and synthesis mapping**: For understanding system complexity (Sevaldson, 2011)
    
- **Version control systems**: Git/GitLab for coordinating distributed development
    
- **Meta modelling tools**: For surrogate-based design optimisation (e.g., UQLab)
    

---

### 7. Case Study: Lightweight Robotic Arm Design

In Krischer et al. (2024), a 4-component robotic arm was developed using a decoupled optimisation method. Each component’s stiffness was optimised separately, using a shared mass/stiffness feasibility map. The overall design met system-level constraints (e.g., 1mm end effector displacement under load) while allowing for significant modularity.

The approach reduced overall mass deviation from the monolithic design by less than 13% while achieving feasible, buildable geometries for additive manufacturing. This demonstrates how systematic design principles can enable scalable engineering under real-world constraints.

---

### 8. Conclusion

Systematic design provides a structured and methodical way to manage the complexity inherent in large, multi-component systems. It is both a mindset and a methodology, drawing from systems thinking, optimisation, and domain-specific engineering practices.

By integrating stakeholder needs, technical constraints, and adaptive feedback, systematic design becomes essential not just for building systems that work, but for building systems that can evolve.

---

### References

Barbero, S. (2018). Local ruralism: Systemic design for economic development. In _Systemic Design_ (pp. 271–291). Springer.

Bistagnino, L. (2017). _Systemic Design: Methodology and Principles_. Slow Food Editore.

Jones, P. (2014b). Systemic design principles for complex social systems. In G. Metcalf (Ed.), _Social Systems and Design_(Vol. 1, pp. 1–30). Springer.

Krischer, L., Endress, F., Wanninger, T., & Zimmermann, M. (2024). Distributed design optimization of multi-component systems using meta models and topology optimization. _Structural and Multidisciplinary Optimization_, 67, 160.

Martins, J. R. R. A., & Ning, A. (2022). _Engineering Design Optimization_. Cambridge University Press.

Meadows, D. (2008). _Thinking in Systems: A Primer_. Chelsea Green Publishing.

Ryan, A. (2014). A framework for systemic design. _FormAkademisk_, 7.

Sevaldson, B. (2011). Giga-mapping: Visualisation for complexity and systems thinking in design. _Nordic Design Research Conference, Helsinki_.

Smith, S., & Kalantidou, E. (2023). A systematic review of systemic design frameworks for complex challenges. _Strategic Design Research Journal_, 16(2), 256–269.

---

## LAB ACTIVITY: Modular Smart Heating Controller Design

**Objective:** Apply systematic design methods to design a modular smart heating system consisting of multiple interacting components.

### Scenario

You are part of a design team tasked with developing a smart heating system for homes. The system includes:

- Smart thermostat
    
- Central heating unit
    
- External weather data service (API)
    
- Mobile app for user control
    
- Motion and temperature sensors in each room
    

Each team will design a component and define its interfaces and constraints.

### Instructions

1. **Team Formation** (15 min)
    
    - Split into 4–5 student teams. Each team takes one component.
        
2. **Context and Requirements** (20 min)
    
    - As a full group, define:
        
        - Functional requirements
            
        - Non-functional requirements
            
        - System constraints (e.g., budget, performance)
            
3. **Interface Definition** (20 min)
    
    - Within your component group:
        
        - Define inputs and outputs
            
        - Create an interface diagram
            
4. **Component Design** (30 min)
    
    - Design how your module will satisfy its responsibilities
        
    - Use sketches, pseudocode, or diagrams as needed
        
5. **System Integration Simulation** (30 min)
    
    - Reassemble as a class
        
    - Simulate signal/data flow across interfaces
        
    - Identify potential conflicts, redundancies, or improvements
        
6. **Reflection & Documentation** (30 min)
    
    - Each team writes a brief report:
        
        - Component function
            
        - Interface specification
            
        - Challenges and integration notes
            
        - How systematic design helped structure your work
            

### Expected Deliverables

- Interface diagram (team level)
    
- Component design summary (team level)
    
- Integrated system diagram (class level)
    
- Reflection paragraph (individual)
    

### Learning Outcomes

- Apply systematic design process to a practical case
    
- Define and evaluate system interfaces
    
- Experience distributed design and integration
    
- Reflect on benefits of structured design methodology
    

---

## STUDENT LAB WORKSHEET

### Title: Smart Heating System - Systematic Design Lab

**Student Name:** ____________________  
**Team Component:** __________________  
**Date:** ____________________

---

### PART 1: Requirements Summary (Group Discussion)

|Functional Requirement|Description|
|---|---|
|||
|||

|Non-Functional Requirement|Description|
|---|---|
|||
|||

---

### PART 2: Interface Specification (Your Team’s Component)

- Inputs:
    
- Outputs:
    
- Communication protocols:
    

**Draw Interface Diagram Here:**  
(Use arrows to show data/control flows)

---

### PART 3: Component Design Summary

Briefly describe how your module fulfils its role:

---

### PART 4: Integration Reflection

- What integration problems did you encounter?
    
- How did interface definitions help manage complexity?
    
- What would you change?
    

---

### PART 5: Personal Reflection (5 sentences minimum)

- What did you learn about systematic design?
    
- How did your thinking change during the exercise?
    

---

## SAMPLE COMPLETED WORKSHEET

**Student Name:** Alex Turner  
**Team Component:** Smart Thermostat  
**Date:** 15 Sept 2025

---

### PART 1: Requirements Summary

|Functional Requirement|Description|
|---|---|
|Sense room temperature|Periodically read temperature in each room|
|User override|Allow user to set manual temperature via app|

|Non-Functional Requirement|Description|
|---|---|
|Secure communication|All messages encrypted|
|Low latency|Response time <1s for manual input|

---

### PART 2: Interface Specification

- Inputs:
    
    - Current temperature (sensor)
        
    - Desired temperature (mobile app)
        
- Outputs:
    
    - Heating command (to central unit)
        
- Protocols: MQTT for sensor data; HTTPS for app API
    

**Diagram:**

```
Sensor --> Thermostat --> Boiler
              ^
              |
         Mobile App
```

---

### PART 3: Component Design Summary

Our thermostat processes input temperature and user settings, compares them, and sends on/off commands to the heating unit. We used a simple hysteresis controller to avoid rapid switching.

---

### PART 4: Integration Reflection

We initially assumed constant sensor update frequency, but some sensors sent data asynchronously, causing logic bugs. Having defined input protocols helped debug faster. We also missed edge cases where the app and sensor data conflicted.

---

### PART 5: Personal Reflection

I learned that defining clear interfaces makes collaboration smoother. Without systematic planning, it's easy to design incompatible modules. During integration, we saw how even small assumptions (e.g., units of measurement) can lead to errors. I appreciated the use of diagrams to clarify data flow. Next time, I'd include edge-case testing earlier in the process.