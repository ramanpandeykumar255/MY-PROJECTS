A = int(input("enter the length"))
B = int(input("enter the length"))
C = int(input("enter the length"))
if A == B and A == C:
    print ("it is a equilateral triangle")
elif A == B or A != C:
    print ("it is a isosceles triangle")
else:
    print("its a scalene triangle")