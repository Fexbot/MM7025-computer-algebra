print("Lex ordering, x > y > z")

R = QQ[x,y,z, MonomialOrder => Lex];

I = ideal(x^2+x+z, y^2+x+y^3+1, z^2+x^2+x);

gbList = flatten entries gens gb I;

print("GB Basis: " | toString gbList);

LMTerms = apply(gbList, f -> leadMonomial f);

print("Leading monomials: " | toString LMTerms);

print("")
print("Lex ordering, y > x > z")

R = QQ[y,x,z, MonomialOrder => Lex];

I = ideal(x^2+x+z, y^2+x+y^3+1, z^2+x^2+x);

gbList = flatten entries gens gb I;

print("GB Basis: " | toString gbList);

LMTerms = apply(gbList, f -> leadMonomial f);

print("Leading monomials: " | toString LMTerms);

print("Lex ordering, x > z > y")

R = QQ[x,z,y MonomialOrder => Lex];

I = ideal(x^2+x+z, y^2+x+y^3+1, z^2+x^2+x);

gbList = flatten entries gens gb I;

print("GB Basis: " | toString gbList);

LMTerms = apply(gbList, f -> leadMonomial f);

print("Leading monomials: " | toString LMTerms);

print("Lex ordering, y > z > x")

R = QQ[y,z,x MonomialOrder => Lex];

I = ideal(x^2+x+z, y^2+x+y^3+1, z^2+x^2+x);

gbList = flatten entries gens gb I;

print("GB Basis: " | toString gbList);

LMTerms = apply(gbList, f -> leadMonomial f);

print("Leading monomials: " | toString LMTerms);