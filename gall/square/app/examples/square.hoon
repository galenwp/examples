::  Accepts an atom from the dojo and squares it.
::
::::  /hoon/square/examples/app
  ::
/?    314
!:
|_  {bowl state/$~}
::
++  poke-atom
  |=  arg/@
  ^-  {(list) _+>.$}
  ~&  [%square (mul arg arg)]
  [~ +>.$]
--

