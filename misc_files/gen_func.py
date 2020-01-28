import random
import string


def token_generate(length=10):
    letter = string.ascii_letters
    token = ''.join(random.choice(letter)for i in range(length))
    return token