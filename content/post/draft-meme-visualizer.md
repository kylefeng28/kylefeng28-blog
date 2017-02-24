---
date: 2017-02-02T02:00:45-05:00
draft: true
layout: ""
tags: snippets
title: Visualizing the Meme Economy
---

- This is what happens when Computer Science majors get bored, things


```
svg.call(d3.zoom().on("zoom", function () {
	svg.select("g").attr("transform", d3.event.transform);
}));
```
