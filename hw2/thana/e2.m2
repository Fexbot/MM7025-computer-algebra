R = QQ[x,y,z]

f1 = x^2 + y + z + 1
f2 = x^2 + y^2 + 3*x
f3 = y^2 + x*z + x + 1
f4 = y^2 + y + x + 5

ide =  ideal(f1,f2,f3,f4)

print "Grobner basis contains 1: "
-- 1_R is identity in the ring, this case 1_R = 1 int
print(1_R % ide == 0)