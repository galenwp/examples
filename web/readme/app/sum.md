# `:sum`

This app prints out an accumulating sum of numbers stored in `:sum`'s app state.

To run, start the app from `:dojo`:

    ~your-urbit:dojo/examples> |start %sum

and poke the app with an atom, converted from a noun using the `&atom` mark:

    ~your-urbit:dojo/examples> :sum &atom 40

You should see:

    [%sum 40]

Then, once more:

    ~your-urbit:dojo/examples> :sum &atom 2

The sum should now be:

    [%sum 42]

Here's what happened:

* The `:dojo` nouns were type-checked by `mar/atom.hoon` and converted into an atom

* The validated atoms were then passed to the `++poke-atom` arm in the `sum.hoon` app,
which added the given numbers to the number stored in its state; the new
result is then printed out and then replaces the previous number in the app
state.
