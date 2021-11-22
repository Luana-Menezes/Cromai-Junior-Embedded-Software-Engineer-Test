import sys
import os
from time import sleep

filename = sys.argv[1]
pid = os.getpid()

file = open(filename, 'w')
file.write(str(pid) + "\n")
file.close()

for i in range(3):
    print("2: I am alive")
    sleep(5)

print("2: I gonna die now, bye")
