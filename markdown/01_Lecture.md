---
title: AICE2005
description: Combine lectures series for final exam
author: Dr Nawfal Al Hashimy
header: Dr Nawfal Al Hashimy | AICE 2005
footer: <span name='current_date'></span>
lang: En
size: 16:9
paginate: true
theme: hsmw
transition: none
math: mathjax
marp: true
---

<!-- _class: title -->
# Introduction to Systematic Design of Multi-Component Systems

<!-- Welcome to this comprehensive introduction to systematic design approaches for complex multi-component systems. Throughout this lecture, we'll explore structured methodologies that enable engineers to tackle the challenges of designing interconnected systems—from robots and IoT devices to automotive systems—with greater efficiency and reliability.

By the end, you'll understand how to think both systematically and systemically about design problems, balancing component-level optimisation with holistic system performance. -->

---

<!-- _class: ilo -->

By the end of this lecture, students will be able to:

- Define systematic and systemic design in the context of multi-component systems.
    
- Identify the differences between monolithic and distributed design approaches.
    
- Describe the key phases of a systematic design process.
    
- Explain the importance of interfaces and coordination in distributed system development.
    
- Evaluate tools and methods used to support the systematic design of complex systems.
    
- Apply a systematic design process to a simplified real-world engineering problem.
    

---

#

<!-- _class: end -->
# Thank you

**Dr Nawfal Al Hashimy**
Lecturer in Cyber Physical Security

**Universtity of Southampton** | Faculty of Engineering and Physical Sciences 
Cyber Physical Systems Research Group


&phone; +44 (0) 23 8059 6659

@ [Nawfal@soton.ac.uk](mailto:Nawfal@soton.ac.uk)

Highfield Campus, Building 53, Room 4049
Burgess Road, Southampton SO17 1BJ, UK

<!-- markdownlint-disable-file MD013 -->
<!-- markdownlint-disable-file MD025 -->
<!-- markdownlint-disable-file MD033 -->

<script>
    const date = new Date();
    const year = date.getFullYear();
    const month = ("0" + (date.getMonth() + 1)).slice(-2);
    const day = ("0" + date.getDate()).slice(-2);
    document.getElementsByName("current_date").forEach(function(ele, idx) {
        ele.innerHTML = day + "." + month + "." + year;
    })
</script>

<style>
footer::before {
 content: "Version: GITREVISION | © ";
}
</style>
