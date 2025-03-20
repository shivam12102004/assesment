a = input("enter the number and seperate with space")
string = a.split()

numbers = list(map(int, string))

large = numbers[0]

for i in numbers:
    if i>large:
        large=i
print("the largest number is :",large)