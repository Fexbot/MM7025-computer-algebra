S = QQ[x, y, z, MonomialOrder => Lex]

f1 = 5*z^2 - 6*x + 3*y + 10*z - 12
f2 = 5*y*z - 6*x + 18*y - 5*z - 12
f3 = 5*x*z - 3*x + 9*y -5*z - 6
f4 = 5*y^2 - 2*x + y - 4
f5 = 5*x*y - x - 2*y - 2
f6 = 5*x^2 + 7*x - 6*y - 6

i = ideal(f1, f2, f3, f4, f5, f6)
g = groebnerBasis i
print("A Gröbner basis for the ideal is: " | toString g)
print("The factored basis polynomials are:")
for i from 0 to 3 do
	print ("   " factor g_(0,i));

-- | z3+2z2-3z yz+3y-z2-3z 3y2-z2-2z 6x-3y-5z2-10z+12 |
-- Eq. 1 (z^3 + 2z^2 - 3z):
-- 	 z^3+2z^2-3z = 0 => z ∈ {-3, 0, 1}
-- Eq. 2 (yz + 3y - z^2 - 3z = 0):
--   z = 0 => y = 0
--	   Eq. 3 (3y^2 - z^2 - 2z = 0)
--	   Consistent.
--   z = 1 => y = 1
--	   Eq. 3 (3y^2 - z^2 - 2z = 0)
--	   Consistent.
--   z = -3 => true forall y
--	   Eq. 3 (3y^2 - z^2 - 2z = 0)
--	   => y = ± 1
-- Eq. 4 (6x - 3y - 5z^2 - 10z + 12)
-- 	 (y,z) = (0,0):
--		=> x = -2
-- 	 (y,z) = (1,1):
--		=> x = 1
-- 	 (y,z) = (1,-3):
-- 		=> x = 1
-- 	 (y,z) = (-1,-3):
-- 		=> x = 0