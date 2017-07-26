# `:pong`

This app demonstrates how to poke an app with an urbit name.

To run, start the app from `:dojo` on two urbits:

    ~your-urbit-1:dojo/examples> |start %pong

    ~your-urbit-2:dojo/examples> |start %pong

Then, from your first urbit's `:dojo`:

    ~your-urbit-1:dojo/examples> :pong &urbit ~your-urbit-2

Your second urbit should receive:

    [%pong 'Incoming pong!']
    [%pong %received 'Pong']

Let's briefly walk through what we just did:

* We sent data of the `urbit` mark from dojo to the sender (your first urbit)'s `pong.hoon`
app.

* `mar/urbit` parses the data, and passes it to `++poke-urbit`

* `++poke-urbit` then sends a move with the message 'Pong' to your second urbit.

* Your second urbit received this data with its own `pong.hoon` app. `pong.hoon` parses it
with `mar/atom`, and then receives it on the `++poke-atom` arm, which simply
prints the message out.
