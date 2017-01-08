---
date: 2015-10-30T23:22:20-04:00
draft: true
tags: snippets
title: Double-y-axis Graphs in R
---

```r
doubleplot.xts2 <- function(data1, data2,
      main=NULL, xlab = NULL, ylab1 = NULL, ylab2 = NULL,
      col1 = "red", col2 = "blue")
{
  # Make right margin bigger
  par(mar=c(5, 4, 4, 4))

  # Data 1
  plot.xts2(
    data1,
    main = "", xlab = "", ylab = "",
    col = col1,
    axes.yside = 2, las = 1,
  )
  
  par(new=TRUE, xpd=TRUE)
  
  # Data 2
  plot.xts2(
    data2,
    main = "", xlab = "", ylab = "",
    xaxt = "n", # Supress x-axis
    col = col2,
    axes.yside = 4, las = 1,
  )

  # Draw axes labels
  mtext(xlab, side = 1, line = 3) # x-axis
  mtext(ylab1, side = 2, line = 3, las = 3) # y-axis left
  mtext(ylab2, side = 4, line = 2, las = 3) # y-axis right
  
  # Main text
  title(main=main)
  
  # Legend
  legend(
    "topright", c(ylab1, ylab2),
    inset = c(-0.05, -0.2),
    col = c(col1, col2),
    lty = 1, cex = 0.7
  )
  
}
```
