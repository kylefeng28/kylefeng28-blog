---
title: Includes in Hugo
date: 2017-02-22T17:29:30-05:00
dateModified: 2017-02-22T22:39:14-05:00
layout: blog
tags: hugo
---

<!--
[Discussion](https://discuss.gohugo.io/t/create-an-home-page-whose-content-comes-from-partial-file-stored-in-the-content-folder/433/3)
[Issue](https://github.com/spf13/hugo/issues/247)
[SO answer](http://stackoverflow.com/a/39777029/5191980),
[Source](https://github.com/spf13/hugo/blob/master/tpl/tplimpl/template_funcs.go)
[Render content from another file in Markdown](https://github.com/jorinvo/hugo-shortcodes/blob/master/shortcodes/content.html)
[Load data from JSONs and CSVs](https://gohugo.io/extras/dynamiccontent).
-->

While writing my [last post](/a-child-who-couldnt-sleep/), I wanted to include some of the Haskell code I wrote from another file.
Sure, I could just copy and paste, but that wouldn't be very *DRY*, would it?

Jekyll had [includes](https://jekyllrb.com/docs/includes/), so I assumed
Hugo would have something that worked similarly.

There was indeed a function called [`readFile`](https://gohugo.io/templates/functions/#readfile)
but you would need to specify the entire path of the file, relative to the project working directory,
not the base URL.
For example, to include `/blog/my-post/hello.hs`,
you would need to write `{{``< readfile "/content/blog/my-post/hello.hs" >``}}`, using the builtin shortcode.

That's a little bit annoying to write, so I changed it a bit
so that the path could be relative to the file it was called in:

##### include
```
{{- delimit (slice "/content" .Page.URL (.Get 0)) "" | readFile -}}
```

That way, you would only need to write `{{``< include "hello.hs" >``}}`.

Just for good measure, I made the following shortcodes that would
read a file from the content or static directory, respectively.

##### includeContent
```
{{- delimit (slice "/content" (.Get 0 | relURL)) "" | readFile -}}
```

##### includeStatic
```
{{- delimit (slice "/static" (.Get 0 | relURL)) "" | readFile -}}
```

Just for fun, I tried including a file within itself to see if that would work.
The next thing I knew, I was looking at a [quine](quine). Well, kind of.
