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

The best way to understand this is to simply read [the code](https://baredot.github.io/setup.sh):

~~~ sh
{% include_relative setup.sh %}
~~~

### Acknowledgements

Thanks to StreakyCobra from Hacker News for [discovering this way of using Git](https://news.ycombinator.com/item?id=11071754"). Packaged into a script by Andres Riofrio (@ariofrio).
