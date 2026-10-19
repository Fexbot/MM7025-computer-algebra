print "Lex:\n"

R = QQ[x,y, MonomialOrder => Lex]
f = x^7*y^2 + x^3*y^2 - y + 1
g = x - y^3

print (f % g)

print "------\n"

print "GLex:\n"

R = QQ[x,y, MonomialOrder => GLex]
f = x^7*y^2 + x^3*y^2 - y + 1
g = x - y^3

print (f % g)

print "------\n"

print "GRevLex:\n"
R = QQ[x,y, MonomialOrder => GRevLex]
f = x^7*y^2 + x^3*y^2 - y + 1
g = x - y^3

print (f % g)

print "------\n"
