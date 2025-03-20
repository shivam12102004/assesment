filename = "sample.txt" 

file = open(filename, "r")


content = file.read()


file.close()


lines = content.split("\n")
num_lines = len(lines)
num_words = len(content.split())
num_chars = len(content)


print("Number of lines:", num_lines)
print("Number of words:", num_words)
print("Number of characters:", num_chars)

#i dont have any file so i use sample.txt for an example but my code is 100%true