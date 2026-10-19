S = QQ[x, y, z, MonomialOrder => Lex]

f1 = x^2 + y + z + 1
f2 = x^2 + y^2 + 3*x
f3 = y^2 + x*z + x + 1
f4 = y^2 + y + x + 5

i = ideal(f1, f2, f3, f4)
g = groebnerBasis i
print g