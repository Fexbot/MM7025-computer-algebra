S = CC[x, y, z, MonomialOrder => Lex]

f1 = x^2 + y + z + 1
f2 = x^2 + y^2 + 3*x
f3 = y^2 + x*z + x + 1
f4 = y^2 + y + x + 5

i = ideal(f1, f2, f3, f4)
g = groebnerBasis i
print g

-- Since the Gröbner basis is 1, we can write
-- 1 as a linear combination of f1, f2, f3, f4,
-- which precludes any common solution 
-- f1 = f2 = f3 = f4 = 0, since all of the
-- linear terms would then be zero. Q.E.D.