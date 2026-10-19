mod2 = (f,g1, g2) -> (
    r_i = f;
    r_o = 0;
    while true do (
        r_o = (r_i % g1) % g2;
        if r_o == r_i then break;
        r_i = r_o;
    );
    r_o
)   

print "Lex:\n"

R = QQ[x,y, MonomialOrder => Lex]
f = x^7*y^2 + x^3*y^2 - y + 1
g1 = x - y^3
g2 = x*y^2 - x

print mod2(f,g1,g2)

print "------\n"

print "GLex:\n"

R = QQ[x,y, MonomialOrder => GLex]
f = x^7*y^2 + x^3*y^2 - y + 1
g1 = x - y^3
g2 = x*y^2 - x

print mod2(f,g1,g2)

print "------\n"

print "GRevLex:\n"
R = QQ[x,y, MonomialOrder => GRevLex]
f = x^7*y^2 + x^3*y^2 - y + 1
g1 = x - y^3
g2 = x*y^2 - x

print mod2(f,g1,g2)

print "------\n"
