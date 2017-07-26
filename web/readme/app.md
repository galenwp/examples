---
title: Applications
---

# Applications

`%gall` is the urbit application driver.  `%gall` apps hold state, respond to
subscription requests and synchronizes state across ships.  

Assuming you have these files inside a running urbit pier on an `%examples` desk by following the [examples readme](/~~/readme), you'll need to `|start` each app:

    ~your-urbit:dojo/examples> |start %app

In the case that the app has a web interface, its URL will look something like:

    http://localhost:8443/~~/pages/app

Visit that page to use the interface.

Each individual app has its own set of instructions in `/readme/app/{app name}`. Here they all are:

<list>
