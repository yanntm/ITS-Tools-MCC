#!/usr/bin/python3
import spot
import sys

# Usage script.py file.hoa

aut = spot.automaton(sys.argv[1])
neg = spot.complement(aut)
neg = neg.postprocess('TGBA')
st_inv = spot.is_stutter_invariant(aut)
cl_inv = spot.product(spot.closure(aut), neg).is_empty()
sl_inv = spot.product(spot.sl(aut), neg).is_empty()

print('#is_stutter,is_lengthening_ins,is_shortening_ins')
print(st_inv+0, sl_inv+0, cl_inv+0)
