genList = R -> (
    use R;
    {
        x^2 + x + z,
        y^2 + x + y^3 + 1,
        z^2 + x^2 + x
    }
);

leadingMono = (R, gen) -> (
    use R;
    I := ideal(gen);
    gbList := flatten entries gens gb I;
    LMTerms := apply(gbList, f -> leadMonomial f);
    LMTerms
);

print "Lex ordering, y > x > z";
R1 = QQ[y,x,z, MonomialOrder => Lex];
g1 = genList(R1);
print("Leading monomials: " | toString leadingMono(R1, g1));

print "";

print "Lex ordering, x > z > y";
R2 = QQ[x,z,y, MonomialOrder => Lex];
g2 = genList(R2);
print("Leading monomials: " | toString leadingMono(R2, g2));