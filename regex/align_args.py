"""
Example code showing how to align function args with single tab using vim find/replace + regex
"""

def mlem(a,b,c,d,e):
  return a

# :%s/\([(,]\)/\1\r\t/g
