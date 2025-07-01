string = input("enter a string: ")
revstring = ""
for i in string:
    revstring = i + revstring
    print ("reversed string: ", revstring)
if revstring == string:
    print ("the string is palindrome")
else :
    print ("the string is not palindrome")