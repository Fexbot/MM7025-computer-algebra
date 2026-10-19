R = CC[x,y,z,MonomialOrder => Lex];

f1 = 5*z^2 - 6*x + 3*y + 10*z - 12;
f2 = 5*y*z - 6*x + 18*y - 5*z - 12;
f3 = 5*x*z - 3*x + 9*y - 5*z - 6;
f4 = 5*y^2 - 2*x + y - 4;
f5 = 5*x*y - x - 2*y - 2;
f6 = 5*x^2 + 7*x - 6*y - 6;

ide = ideal(f1,f2,f3,f4,f5,f6);
bas = gb ide
print("The basis contains: ")
scan(flatten entries gens bas, f -> print f);
print("")
print("the solution is x = -2, y = 0, z = 0")