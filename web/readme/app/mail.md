# `:mail`

This allows urbits to send typed, email-like message over the network.

You will need to have two running urbits to send a message. To run, start the app from `:dojo` on both urbits:

    ~your-urbit-1:dojo/examples> |start %mail

    ~your-urbit-2:dojo/examples> |start %mail

Then, from your browser, visit both:

    http://localhost:8443~~/pages/mail

and:

    http://localhost:8444/~~/pages/mail

Running in an incognito tab might help keep your cookies clean here.

Fill out the `To` field in the page of your first urbit with the name of second urbit (don't forget `@p` syntax: prefix the name/address with a `~`!).

Then, fill out the `Subject` and `Body` forms with text.

Click `Send`.

Your second urbit's console and web page should display the message!

Let's walk through what just happened:

* When we click 'send', foos.js uses `urb.send` from `urb.js` to send our
message as an 'mail-send' to the sending urbit's `mail.hoon` app.

* `mar/mail/send.hoon` parses our message and passes it to the
`++poke-mail-send` arm.

* `++poke-mail-send` saves the message in the `sent` part of its
state, then sends it with the current timestamp and sender --
as a `mail-message` -- to the `mail.hoon` app running on the other ship.

* The other ship's `mail.hoon` parses our message with
`mar/mail/message`, receiving it on the `++poke-mail-message` arm.

* `++poke-mail-message` saves the received `mail-message` in
its state, and then sends the updated version to the browser client for display.
