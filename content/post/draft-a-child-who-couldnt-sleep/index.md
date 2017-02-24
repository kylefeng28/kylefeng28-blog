---
title: A Child Who Couldn't Sleep...
date: 2017-02-21T13:14:39-05:00
dateModified: 2017-02-22T23:14:49-05:00
draft: true
layout: ""
tags: [ "haskell" ]
extras: [ "highlight" ]
---

There's going to be a lot of storytelling and singing in this post.

You have been warned.

## A Bedtime Story
Our COMP 411 assignment was to implement the following recursive story in MIPS:

> A child couldn't sleep, so her mother told a story about a little frog,  
> &emsp;who couldn't sleep, so the frog's mother told a story about a little bear,  
> &emsp;&emsp;who couldn't sleep, so the bear's mother told a story about a little weasel,  
> &emsp;&emsp;&emsp;... who fell asleep.  
> &emsp;&emsp;... and then the little bear fell asleep;  
> &emsp;... and then the little frog fell asleep;  
> ... and then the child fell asleep.

Since I'm currently learning Haskell on my own, I decided to implement the story in Haskell as well.

![xkcd 1270 -- Function](https://imgs.xkcd.com/comics/functional.png)

##### bedtimestory.hs
{{< collapse label="Click to show/hide code" >}}
<pre><code class="language-haskell">{{< includeContent "post/draft-a-child-who-couldnt-sleep/bedtimestory.hs" >}}</code></pre>
{{< /collapse >}}

---

I tried looking for it online to see if the story had a name, and I found [this post on Everything2](http://everything2.com/user/wharfinger/writeups/recursion). For the OP, this story was the best explanation of recursion they've ever heard.

> Stuff happens on the way in, you hit an endpoint, and other stuff happens in reverse order on the way back out as it all unwinds. For somebody who doesn't "get" recursion yet, this is not a bad map to start with.

Not a bad analogy at all! As I thought about this some more, I realized that a lot of songs use recursion
that use recursion as well.

Granted, they are actually cumulative, but they can be implemented using recursion.

https://en.wikipedia.org/wiki/The_Complexity_of_Songs
http://www.macs.hw.ac.uk/~greg/publications/gjm.idc15.pdf
https://en.wikipedia.org/wiki/Cumulative_song

##### 99 Bottles of Beer
{{< collapse label="Click to show/hide code" >}}
<pre><code class="language-haskell">{{< includeContent "post/draft-a-child-who-couldnt-sleep/bottles.hs" >}}</code></pre>
{{< /collapse >}}

##### 12 Days of Christmas
{{< collapse label="Click to show/hide code" >}}
<pre><code class="language-haskell">{{< includeContent "post/draft-a-child-who-couldnt-sleep/christmas.hs" >}}</code></pre>
{{< /collapse >}}

I could've used a list: `take n $ reverse gifts`, but that wouldn't show recursion, would it!

##### Alouette
{{< collapse label="Click to show/hide code" >}}
<pre><code class="language-haskell">{{< includeContent "post/draft-a-child-who-couldnt-sleep/alouette.hs" >}}</code></pre>
{{< /collapse >}}
