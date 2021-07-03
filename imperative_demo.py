#Simple python program to demonstrate imperative programming

#Function definitions
def addTwoNums(x, y):
    return (x + y)

def addThreeNums(x, y, z):
    return addTwoNums(x, addTwoNums(y, z))

def isGreaterThan(x, y):
    return x > y

#Imperative Style
print("5 + 6 =", addTwoNums(5,6))
print("4 + 55 + 32 =", addThreeNums(4,8,11))
print("Is 5 greater than 107?", isGreaterThan(7, 9))
