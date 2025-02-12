import time
import itertools
import string
from subprocess import Popen, PIPE

start = time.time()

cProg = Popen(['./password.exe','123'], stdout=PIPE)
(output,error) = cProg.communicate()

rainbowTable = string.ascii_lowercase[:26]

flag = 0


for i in range(0,6):
    for trial in itertools.product(rainbowTable, repeat=i):
        trial = ''.join(trial)
        print(trial)
        cProg = Popen(['./password.exe',trial], stdout=PIPE)
        (outputNew,error) = cProg.communicate()

        if(outputNew != output):
            flag=1
            time = time.time()-start
            print("Password is "+trial+". Cracked in "+str(time))
            exit()


if flag==0:
    print("Password could not be cracked :(")
