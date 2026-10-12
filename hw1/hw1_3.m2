-- Task 3
factors = (p, d) -> (
    S = ZZ/p[x];
    f = x^d - 1;
	factor f
    -- # (factor f)
    )
p = 17, print p
d = 51, print d
print factors (17, 51)
