# `:square`

This app prints out the square of an atom.

To run, start the app from `:dojo`:

    ~your-urbit:dojo/examples> |start %square

and poke the app with an atom, converted from a noun using the `&atom` mark:

    ~your-urbit:dojo/examples> :square &atom 10

You should see:

    [%square 100]

Here's what happened:

* The `:dojo` noun was type-checked by `mar/atom.hoon` and converted into an atom

* The validated atom was then passed to `++poke-atom` in the `square.hoon` app,
which printed out the square of the given number'.
