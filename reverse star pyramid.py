k = int(input("Enter number of steps: "))

for i in range(k, 0, -1):
    for j in range(0, i):
        print("* ", end=" ")

    print()
