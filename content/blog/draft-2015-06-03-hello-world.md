---
title: Hello World!
date: 2015-06-03
tags:
draft: true
---

Hello Interwebs!  I've  decided to make a home for the stuff I make. I considered a few CMS's, but I eventually settled for ~~Jekyll~~ Hugo for its simplicity. There's nothing on this site yet, but I'm currently reviewing my past creations, and will post the ones I deem worthy.

In the meantime, please press this button to view a random cat picture:

<input type="button" id="btnShowPicture" value="Press me!" /><br />
<img id="picture" src="" style="display: none;"/>
<style>
    img {
        max-width: 500px;
    }
</style>

<script>
var sources =
[ "http://exmoorpet.com/wp-content/uploads/2012/08/cat.png",
  "http://wac.450f.edgecastcdn.net/80450F/hudsonvalleycountry.com/files/2015/01/cat4.jpg",
  "http://s.hswstatic.com/gif/whiskers-sam.jpg",
  "http://animalfair.com/wp-content/uploads/2014/06/little_cute_cat_1920x1080.jpg",

 ];

function showPicture() {
  var index = Math.floor(Math.random() * sources.length);
  console.log("Cat number #%i!", index);

  var pic = document.querySelector("#picture");
  pic.src = sources[index];
  pic.style.display = "";
}

document.querySelector("#btnShowPicture").onclick = showPicture;
</script>
