---
title: Marp Presentation Example
description: Example Slides for a Marp-Powered Presentation
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

---
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
