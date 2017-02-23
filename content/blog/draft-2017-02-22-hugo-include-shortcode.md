---
title: "Includes in Hugo"
date: 2017-02-22T17:29:30-05:00
dateModified: 
draft: true
layout: ""
tags: "hugo"
---

While writing my [last post](/a-child-who-couldnt-sleep/), I wanted to include some of the Haskell code I wrote from another file.
Sure, I could just copy and paste, but that wouldn't be very *DRY*, would it?

Jekyll had [includes](https://jekyllrb.com/docs/includes/), so I assumed
Hugo would have something similar.
I couldn't find what I wanted in the docs, so
I started doing some searching around.
I found [this discussion](https://discuss.gohugo.io/t/create-an-home-page-whose-content-comes-from-partial-file-stored-in-the-content-folder/433/3)
and [this issue](https://github.com/spf13/hugo/issues/247),
but that was for rendering other types of documents in Markdown.
I just wanted to include some pre-formatted code. Moving on.
Then I saw this [answer on Stack Overflow](http://stackoverflow.com/a/39777029/5191980),
and I found out that Hugo did have support for [dynamic content](https://gohugo.io/extras/dynamiccontent/).
Ok, we're getting closer. So there are functions for JSONs and CSVs. What about plain old text?

I searched the [source](https://github.com/spf13/hugo/blob/master/tpl/tplimpl/template_funcs.go) for `getJSON` and `getCSV`,
and I found a function named `readFile` function.
*An undocumented feature!* I thought.
But looking at the [Hugo Template Functions](https://gohugo.io/templates/functions/#readfile) page,
I realized it was buried there the whole time.
Oh. I probably should read the docs more carefully next time. RTFM.

So I did, and actually found that there was already a shortcode for `readfile`.
The problem was, you would need to specify the entire path relative
to the project base, so `/blog/my-post/`
it and turned it into this: ____

So here it is. Lo and behold, the include shortcodes! *fanfare*

#### include

```
{{- delimit (slice "/content" (.Get 0 | relURL)) "" | readFile -}}
```

#### includeRelative

```
{{- delimit (slice "/content" .Page.URL (.Get 0)) "" | readFile -}}
```
