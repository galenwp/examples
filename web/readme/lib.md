---
title: Libraries
---

# Libraries

This directory contains Hoon library modules.

> If you're not viewing this from your urbit's web interface, follow our installation instructions [on Github](https://github.com/urbit/examples) and come back here to run these examples!

Libraries live under `/lib` in a `%clay` desk. Each library core contains a number of arms that take input samples and produce output products.

First, you need to load the library core into your current `:dojo` subject with the `/+` `%ford` rune, then to call a library arm you must evaluate it against the name of the library core. For example, load the `/lib/nock.hoon` library and decrement a number in `:dojo` using the Nock `++dec` implementation:

    ~your-urbit:dojo/examples> /+  nock
    ~your-urbit:dojo/examples> (dec:nock 43)
    42

(Note the two spaces - this is a tall-form `%ford` rune)

You can also call the `++test` arm of the library without a sample to evaluate the test expression in the library file. Here's `++test` in `/lib/sorts`:

    ~your-urbit:dojo/examples> /+  sorts
    ~your-urbit:dojo/examples> (test:sorts)
    [ [%insertion-sort ~[1 1 2 3 5 8 13]]
      [%bubble-sort ~[1 1 2 3 5 8 13]]
      %merge-sort ~[1 1 2 3 5 8 13]
    ]

When you're done, simply enter a blank `/+` to reset `:dojo` to the normal
subject.

<br />

Try them all!

* [`/+  lisp99`](/~~/===/lib/lisp99.hoon)
* [`/+  nock`](/~~/===/lib/nock.hoon)
* [`/+  parse-sexpr`](/~~/===/lib/parse-sexpr.hoon)
* [`/+  ski`](/~~/===/lib/ski.hoon)
* [`/+  sorts`](/~~/===/lib/sorts.hoon)
* [`/+  strings-kmp`](/~~/===/lib/strings-kmp.hoon)
* [`/+  strings-piglatin`](/~~/===/lib/strings-piglatin.hoon)
