import itertools
import string
import subprocess

DEBUG=1
BINARY_PATH="./exo0.exe"
MAX_CHAR=10

def guess_password():
    chars = string.ascii_lowercase + string.ascii_uppercase + string.digits
    attempts = 0
    for password_length in range(1, MAX_CHAR):
        for guess in itertools.product(chars, repeat=password_length):
            attempts += 1
            guess = ''.join(guess)
            cmd = BINARY_PATH+" "+guess

            if DEBUG == 1 :
                print('CMD {} || ATTEMPTS {}.'.format(cmd, attempts))

            output = subprocess.Popen(cmd,stdout=subprocess.PIPE,shell=True).communicate()[0]
            if "Bad" in str(output):
                continue
            else:
                print('password is {}. found in {} guesses.'.format(guess, attempts))
                return


if __name__ == "__main__" :
    print("Main program starting:")
    guess_password()

