#!/usr/bin/python3
import spot, sys

# Usage script.py file.hoa

aut = spot.automaton(sys.argv[1])
neg = spot.complement(aut).postprocess('TGBA')
short_inv = spot.product(spot.closure(aut), neg).is_empty()
len_inv = spot.product(spot.sl(aut), neg).is_empty()

print('#is_stutter,is_lengthening_ins,is_shortening_ins')
print((short_inv and len_inv)+0, len_inv+0, short_inv+0)

has_si_part = False
has_length_ins = False
has_short_ins = False
has_full_sens = False

if (not (short_inv and len_inv)) :
    # compute SI part and test if it is empty
    b1 = spot.sl2(spot.closure(aut))
    b2 = spot.product(b1,neg)
    b3 = spot.sl2(spot.closure(b2))
    si = spot.product(aut, spot.complement(b3)).postprocess('TGBA')
    # ssi = si.postprocess('small')
    has_si_part = not si.is_empty();
    if (not (short_inv or len_inv)) :
        # property is None : not SI, SL or CL
        # decompose non SI part
        ansi = spot.product(aut, spot.complement(si))
        ansi = ansi.postprocess('small')
        # print("ansi : stutter sensitive part of a1")
        # display(ansi)
        # extract lengthening ins part of aut a1 (we start from ansi)        
        b = spot.sl2(ansi)
        c = spot.product(b, spot.complement(ansi))
        d = spot.closure(c)
        e = spot.product(ansi, spot.complement(d)).postprocess('small')
        
        #has_length_ins = spot.instersects(ansi, spot.complement(d))
        has_length_ins = not (e.is_empty())
        
        #print("li : lengthening insensitive part of a1")
        #e = e.postprocess('small')
        #display(e)
        

        # extract shortening ins part of aut a1 (we start from ansi)
        b = spot.closure(ansi)
        c = spot.product(b, spot.complement(ansi))
        d = spot.sl2(c)
        e2 = spot.product(ansi, spot.complement(d)).postprocess('small')
        
        #has_short_ins = spot.instersects(ansi, spot.complement(d))
        has_short_ins = not (e2.is_empty())
        
        # e2 = e2.postprocess('small')
        # print("shi : shortening insensitive part of a1")
        # display(e2)        
        
        ec = spot.complement(e).postprocess('small')
        if (ansi.intersects(ec)) :
            ec2 = spot.complement(e2).postprocess('small')
            if (ansi.intersects(ec2)) :
                remains = spot.product (ansi, ec).postprocess('small')
                has_full_sens = remains.intersects(ec2)
                        
       
print('#has_si,has_len_ins,has_short_ins,has_fully_sens')
print(has_si_part+0, has_length_ins+0, has_short_ins+0, has_full_sens+0)


