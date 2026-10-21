printLMandQuotient = () -> (
	I = ideal(x^2+x+z,y^2+x+y^3+1,z^2+x^2+x);
	print("LM(I) = " | toString flatten entries gens gb I);
	print("LM(R/I) = " | toString flatten entries basis (R/I));
	print("|LM(R/I)| = " | toString length (flatten entries basis (R/I)));
	print "";
	)

print("Lex with x > y > z");
R=QQ[x,y,z, MonomialOrder => Lex];
printLMandQuotient()

print("Lex with x > z > y");
R=QQ[x,z,y, MonomialOrder => Lex];
printLMandQuotient()

print("Lex with z > y > x");
R=QQ[z,y,x, MonomialOrder => Lex];
printLMandQuotient()

print("Lex with z > x > y");
R=QQ[z,x,y, MonomialOrder => Lex];
printLMandQuotient()