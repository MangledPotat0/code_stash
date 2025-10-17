import time

start = time.time()

asdf = 1
asdf = 2

runtime = time.time() - start
print("Runtime:", runtime)

"""
Copy start ... runtime ... print ... lines to register:
:g/^[srp].*$/yank A
Paste:
"ap
Clear register afterwards:
:let @a=""
"""

def somefunction():
    asdf = 1
    asdf = 2
    asdf = 3
    return asdf

def someotherfunction():
    asdf = 1
    asdf = 2
    asdf = 3
    return asdf

"""
Copy whole function from def to return and put the lines to register:
:g/^def\s.*$/,/^\s*return/ yank A
Paste:
"ap
Clear register afterwards:
:let @a=""
"""
