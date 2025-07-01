k = int(input("Enter number of steps: "))

for i in range(k, 0, -1):
    for x in range(1, i+1):
        print(x, end=" ")

    print()
