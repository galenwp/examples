---
title: Web
---

# Web

Here you'll find the files for the example `%gall` applications that have a web frontend, as well as standalone `%ford` web examples that show how to use the Urbit build system to render data to the web.

> If you're not viewing this from your urbit's web interface, follow our installation instructions [on Github](https://github.com/urbit/examples) and come back here to load these examples up!

Web files live under `/web` in a `%clay` desk. The Urbit example web pages here are written in *Sail*, Hoon markup for XML. Using Sail for rendering web files allows us to embed Hoon code in our XML and vice versa, offering a more programmatic alternative to raw HTML (similar to JSX in the React world). A Fora post overviewing Sail syntax can be found [here](https://urbit.org/~~/fora/posts/~2017.7.6..21.27.00..bebb~/):

After you `|start` your example app, the `%gall` web UI will be served to:    

    http://localhost:8443/~~/pages/{app}

where `{app}` is the app UI you're trying to view, and the true `%clay` path is `/~your-urbit/examples/{latest case or current date}/web/pages/{app}` or `/===/web/pages/{app}`. Your `%ford` build system will render the `{app}.hoon` Sail file and serve that to the web at that URL.

Similarly, your `%ford` web examples are being served at:

    http://localhost:8443/~~/pages/ford/{n}

where `{n}` is the number of the example.

View a `README` for one of the `%gall` web app examples:

* [`:click`](/~~/readme/app/click)
* [`:feed`](/~~/readme/app/feed)
* [`:foos`](/~~/readme/app/foos)
* [`:lead`](/~~/readme/app/lead)
* [`:mail`](/~~/readme/app/mail)
* [`:mesh`](/~~/readme/app/mesh)

Or get started with the simple `%ford` web examples:

* [`%ford 1`: Simple HTML](/~~/pages/ford/1)
* [`%ford 2`: Call a Function](/~~/pages/ford/2)
* [`%ford 3`: Assignment](/~~/pages/ford/3)
* [`%ford 4`: Cores 1](/~~/pages/ford/4)
* [`%ford 5`: Cores 2](/~~/pages/ford/5)
* [`%ford 6`: Loops](/~~/pages/ford/6)
* [`%ford 7`: Page Variables](/~~/pages/ford/7)
* [`%ford 8`: Query String Parameters](/~~/pages/ford/8)
* [`%ford 9`: Computing with Parameters](/~~/pages/ford/9)
* [`%ford 10`: Breaking Code Into Parts](/~~/pages/ford/10)
* [`%ford 11`: Computing with Parameters (and Libraries)](/~~/pages/ford/11)
* [`%ford 12`: Loading Resources by Number](/~~/pages/ford/12)

<br />

> The `README`'s that you're reading now are also in here, as well as the Docs if you cloned and copied them. :)
