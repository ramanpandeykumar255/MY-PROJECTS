import random
number = random.randint(1,100)
while True:
    i = int(input("guess the random number: " ))
    if i>number:
         print ("number too high")
        elif i<number:
              print ("number too low")
             int(input("guess the random number: "))
        elif i==number:
            print ("you guessed right")
