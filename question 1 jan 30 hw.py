number = int(input("Enter a number: "))
if number >= 0:
    i = 0
    f=0
    while True:
         if  number %2 != 0:
             i = i + 1
             f=i
         print (f"{i}")
         print (f"{f}")
         number = int(input("Enter a number: "))
else:
    print("the number is negative")
