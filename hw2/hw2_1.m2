S = QQ[x, y, MonomialOrder => Lex]

checkEquality = (lhsGens, rhsGens) -> (
	i1 = ideal(lhsGens);
	i2 = ideal(rhsGens);
	print("Equality using == is " | toString (i1 == i2));
	print "Gröbner bases:";
	print("LHS: " | toString (groebnerBasis i1));
	print("RHS: " | toString (groebnerBasis i2));

	print "Checking LHS generators against i2 using %:";
	for gen in lhsGens do
		print(gen % i2);

	print "Checking LHS generators against i1 using %:";
	for gen in rhsGens do
		print(gen % i1);
	)

-- 1.4.3 b.
print("Task 1.4.3 b.")
lhsGens = {x + x*y, y + x*y, x^2, y^2}
rhsGens = {x, y}
checkEquality(lhsGens, rhsGens)
print("")

-- 1.4.3 c.
print("Task 1.4.3 c.")
lhsGens = {2*x^2+3*y^2-11, x^2-y^2-3}
rhsGens = {x^2-4, y^2-1}
checkEquality(lhsGens, rhsGens)