# `:up`

This app continually pings a server at the 'target' URL, returning `[%all-is-well 200]` or  `[%we-have-a-problem {status-code}]`

To run, start the app from `:dojo`:

    ~your-urbit:dojo/examples> |start %up

Then set the URL you want to ping:

    ~your-urbit:dojo/examples> :up &atom 'https://www.example.com'

and lastly set your 'pinger' to `%on`:

    ~your-urbit:dojo/examples> :up &atom %on

You should receive one of the two outputs listed in the first sentence above.

Then, to turn the 'pinger' off:

    ~your-urbit:dojo/examples> :up &atom %off

Let's walk through what happened, step by step:

* The first URL `:dojo` nouns was type-checked by `mar/atom.hoon` and converted into an atom.

* The validated atom was then passed to the `++poke-atom` arm in the `up.hoon` app.

* `++poke-atom` saves the text url as `target` in the app state.

* We poked `up.hoon` again with the `%on` atom; `%on` also got type-checked and converted to an atom via `mar/atom.hoon` and got passed to `++poke-atom`. This time with the text `on`, this pinged the target url with an http request.

* `++sigh-httr` receives the http response and displays the result. It then calls `++wake-timer`, telling it to wait 10 seconds before pinging the target url again. This process repeats until you poke the app again with `off`.
