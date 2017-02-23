---
date: 2017-02-21T13:14:39-05:00
draft: true
layout: ""
tags: "haskell"
title: A Child Who Couldn't Sleep...
---

Our COMP 411 assignment was to implement the following recursive story in MIPS:

> A child couldn't sleep, so her mother told a story about a little frog,  
> &emsp;who couldn't sleep, so the frog's mother told a story about a little bear,  
> &emsp;&emsp;who couldn't sleep, so the bear's mother told a story about a little weasel,  
> &emsp;&emsp;&emsp;... who fell asleep.  
> &emsp;&emsp;... and then the little bear fell asleep;  
> &emsp;... and then the little frog fell asleep;  
> ... and then the child fell asleep.


Wow, what a great little story! I tried looking for it online to see if the story had a name, and I found [this post on Everything2](http://everything2.com/user/wharfinger/writeups/recursion). 

> Stuff happens on the way in, you hit an endpoint, and other stuff happens in reverse order on the way back out as it all unwinds. For somebody who doesn't "get" recursion yet, this is not a bad map to start with.

---

Since I'm learning Haskell, I decided to implement the story in Haskell.
Why, you may ask?

![xkcd 1270 -- Function](https://imgs.xkcd.com/comics/functional.png)

Enough said.

```haskell
{{< include "sleepless.hs" >}}
```

---

99 bottles of beer

12 Days of Christmas

https://en.wikipedia.org/wiki/The_Complexity_of_Songs

---

