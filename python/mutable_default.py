def mutable_default(arg=[]):
  """
  The default value for a function is evaluated only once at function definition,
  not at function call. So, when a mutable object is used as default value, the
  same mutable object is used across multiple separate function calls. This
  behavior can be used for caching.
  """
  arg.append(1)
  print(sum(arg))
