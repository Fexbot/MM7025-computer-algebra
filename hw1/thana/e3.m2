nirr = (p, d) -> (
    R = ZZ/p[x];
    f = x^d - 1;
    t = factor f;
    #t
)

pri = select(1..10, isPrime);
epo = (2..25);

for p in pri do (
    for d in epo do (
        stdio << "p = " << p << ", " << "d = " << d << ",  no of factors: " << nirr(p,d) << endl;
    )
)

-- something I can see
-- seems like x^(p^n) - 1 has only 1 distinct factor for n >= 1 cause of the theorm x^p - 1 = (x-1)^p
-- otherwise x-1 divides x^d - 1 = (x-1)(x^(d-1) + x^(d-2) + ... + 1) so no. of distinct factor is always > 1 for d > 1