#-*- coding: utf-8 -*-

# Using walrus operator to compute cumulative sum

j = 0
print([(j := j + i) for i in range(10)])
