---
title: Read Me
anchor: none
---

### Get started!

Let's get you running your first examples!

> If you're not viewing this from your urbit's web interface, follow our installation instructions [on Github](https://github.com/urbit/examples) and come back here to load these examples up!

#### `:hello` app

Start your first app, `:hello`, from `:dojo`:

    ~your-urbit:dojo/examples> |start %hello

`:hello` has a web interface that's being served now via `%eyre`, Urbit's web server. Visit the URL in your web browser:

    http://localhost:8443/~~/pages/hello

Once the page loads with the `Hello, world!` delivered from `:hello`'s app state, click the button to *poke* your running `:hello` app and see an output in your `:dojo`.

    [%hello %poked 'Hello, world!']

You can find the source at `/app/hello.hoon` of this repo. More on what just happened in a second.

But first, generators!

#### `+hello` generator

Let's run your first generator, or Urbit shell script, from `:dojo`:

    ~your-urbit:dojo/examples> +hello/h1
    'Hello, world!'

Try the second `+hello` generator with a custom `cord` sample of your choice:

    ~your-urbit:dojo/examples> +hello/h2 'Mars'
    'Hello, Mars!'

Try the third with and without a sample where it will default:

    ~your-urbit:dojo/examples> +hello/h3, =txt 'Mars'
    'Hello, Mars!'

    ~your-urbit:dojo/examples> +hello/h3
    'Hello, universe!'

Generators offer a great combination of simplicity, flexibility and power. You can find the source for the above examples in `/gen/hello` of this repo.

Let's look at libraries next.

#### `/+hello` library

Lastly, let's load up your first library. From `:dojo`:

    ~your-urbit:dojo/examples> /+  hello
    ~your-urbit:dojo/examples> (world:hello 'world')
    'Hello, world!'

(Note the two spaces - this is a tall-form `%ford` rune)

Libraries are a great way to keep useful Hoon cores in one place to share between apps, generators and the rest of the Arvo system. The source for this library is at `/lib/hello.hoon` of this repository.

### Jump in, have fun!

Now that you're warmed up, you're free to jump into these `README`s to dive into the specifics of these different Urbit examples:

* [Applications](/~~/readme/app)
* [Generators](/~~/readme/gen)
* [Libraries](/~~/readme/lib)
* [Web](/~~/readme/web)

<br />

### Contributing / Feedback

Give us feedback in [`:talk`](https://urbit.org/~~/stream) or [file a Github issue](https://github.com/urbit/examples/issues) if you have any ideas, requests, or problems. Pull requests and comments are more than welcome!

We'd love if this became a project driven by the Urbit open-source community. Contribute, ask lots of questions and build stuff in Hoon to show off to the world!
