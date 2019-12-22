import random
f=open("books.org","r")

grep_word ='**'
l=f.readlines()
n=random.randint(1,len(l))

for i in range(0,5):
    if random.choice(l).find(grep_word) >=0:
        print(random.choice(l))

f.close()

# s=random.sample(l,5)
# print "".join(s)
