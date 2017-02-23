---
draft: true
---

```
svg.call(d3.zoom().on("zoom", function () {
	svg.select("g").attr("transform", d3.event.transform);
}));
```
