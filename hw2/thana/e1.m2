R = QQ[x,y];


testMemship = (genLeft, idealLeft, genRight, idealRight) -> (
    leftGenInRightIdeal := true;

    for f in genLeft do (
        if f % idealRight != 0 then leftGenInRightIdeal = false;
    );

    rightGenInLeftIdeal := true;

    for f in genRight do (
        if f % idealLeft != 0 then rightGenInLeftIdeal = false;
    );

    leftGenInRightIdeal and rightGenInLeftIdeal
)

print "---------------"
print "Exercise 1.4.3b"
print "---------------"

genLeft = {x + x*y, y + x*y, x^2, y^2}
genRight = {x,y}
idealleft  = ideal(genLeft)
idealright = ideal(genRight)

print "== method:";
print(idealleft == idealright);

print ""

print "Basis method:";
gbLeft  = gb idealleft;
gbRight = gb idealright;

idealGenLeft = ideal gens gbLeft
idealGenRight = ideal gens gbRight

print(idealGenLeft == idealGenRight);

print ""

print "Ideal membership method:"
-- the generators on the left ideal are in the right ideal

print(testMemship(genLeft, idealleft, genRight, idealright))

print ""

print "---------------"
print "Exercise 1.4.3c"
print "---------------"

genLeft = {2*x^2 + 3*y^2 - 11, x^2 - y^2 - 3}
genRight = {x^2 - 4, y^2 - 1}
idealleft  = ideal(genLeft)
idealright = ideal(genRight)


print "== method:";
print(idealleft == idealright);

print ""

print "Basis method:";
gbLeft  = gb idealleft;
gbRight = gb idealright;

idealGenLeft = ideal gens gbLeft
idealGenRight = ideal gens gbRight

print(idealGenLeft == idealGenRight);

print ""

print "Ideal membership method:"
-- the generators on the left ideal are in the right ideal

print(testMemship(genLeft, idealleft, genRight, idealright))
