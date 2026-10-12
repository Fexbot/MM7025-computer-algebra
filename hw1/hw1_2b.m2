print("Task 2 (b)")
polyRemainder = ord -> (
	S = QQ[x, y, MonomialOrder => ord];
	print("f     = " | toString(f = x^7*y^2 + x^3*y^2 - y + 1));
	print("g     = " | toString(g = x-y^3));
	print("f % g = " | toString(f % g));
	print("======================\n");
	)

print("Lex order")
polyRemainder Lex

print("GLex order")
polyRemainder GLex

print("GRevLex order")
polyRemainder GRevLex
