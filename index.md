---
layout: default
title: Home
---

## First Time Setup

~~~ .console
$ curl https://baredot.github.io/setup.sh | bash
~~~

## Setting Up A New Computer

You'll need to upload your repository somewhere it can be accessed by the new computer, such as BitBucket or GitHub.

~~~ .console
$ curl https://baredot.github.io/setup.sh | bash - https://github.com/<username>/dotfiles
~~~

## How Does It Work?

The best way to understand this is to simply read [the code](/setup.sh):

~~~ sh
{% include_relative setup.sh %}
~~~

### Acknowledgements

Thanks to StreakyCobra from Hacker News for [discovering this way of using Git](https://news.ycombinator.com/item?id=11071754"). Packaged into a script by Andres Riofrio (@ariofrio).

<!--
<p class="message">
  Hey there! This page is included as an example. Feel free to customize it for your own use upon downloading. Carry on!
</p>

In the novel, *The Strange Case of Dr. Jeykll and Mr. Hyde*, Mr. Poole is Dr. Jekyll's virtuous and loyal butler. Similarly, Poole is an upstanding and effective butler that helps you build Jekyll themes. It's made by [@mdo](https://twitter.com/mdo).

There are currently two themes built on Poole:

* [Hyde](http://hyde.getpoole.com)
* [Lanyon](http://lanyon.getpoole.com)

Learn more and contribute on [GitHub](https://github.com/poole).

## Setup

Some fun facts about the setup of this project include:

* Built for [Jekyll](http://jekyllrb.com)
* Developed on GitHub and hosted for free on [GitHub Pages](https://pages.github.com)
* Coded with [Sublime Text 2](http://sublimetext.com), an amazing code editor
* Designed and developed while listening to music like [Blood Bros Trilogy](https://soundcloud.com/maddecent/sets/blood-bros-series)

Have questions or suggestions? Feel free to [open an issue on GitHub](https://github.com/poole/issues/new) or [ask me on Twitter](https://twitter.com/mdo).

Thanks for reading!
-->
