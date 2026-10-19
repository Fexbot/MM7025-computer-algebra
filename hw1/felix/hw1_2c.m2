print("Task 2 (c)")
polyRemainder = ord -> (
	S = QQ[x, y, MonomialOrder => ord];
	print(" f = " | toString(f = x^7*y^2 + x^3*y^2 - y + 1));
	print("g1 = " | toString(g1 = x-y^3));
	print("g2 = " | toString(g2 = x*y^2 - x));
	print("r1 = " | toString(r1 = f % g1));
	print("r2 = " | toString(r2 = r1 % g2));
	print("r3 = " | toString(r3 = r2 % g1));
	print("======================\n");
	)

print("Lex order")
polyRemainder Lex

print("GLex order")
polyRemainder GLex

print("GRevLex order")
polyRemainder GRevLex
