Homebrew-boneyard
=================

[![Boneyard banner](http://i.imgur.com/flEmY.png) ](http://www.flickr.com/photos/72213316@N00/5732778952)

This repository contains formulae that were removed from other repositories in
the Homebrew ecosystem. Common reasons for retiring formulae to the boneyard
are lack of maintenance/upstream activity or insurmountable issues that
remained unsolved for too long. Broken formulae are migrated here as an
alternative to allowing hard work and valuable knowledge to fade into git
history. For some formulae, a little restoration work could return them to the
main repositories.

We welcome issues that discuss the problems facing specific builds and pull
requests that improve the usability of the formulae interred here. However, be
mindful that everything in the boneyard is here for the same reason: it is
broken or unreliable. No issue is guarenteed to get a response, let alone a
solution.

Welcome to the boneyard, perhaps you can dig up something interesting!

How do I install these formulae?
--------------------------------
Just `brew tap homebrew/boneyard` and then `brew install <formula>`.

If the formula conflicts with one from mxcl/master or another tap, you can
`brew install homebrew/boneyard/<formula>`.

You can also install via URL:


    brew install https://raw.github.com/Homebrew/homebrew-boneyard/master/<formula>.rb


Docs
----
`brew help`, `man brew`, or the Homebrew [wiki][].

[wiki]:http://wiki.github.com/mxcl/homebrew
