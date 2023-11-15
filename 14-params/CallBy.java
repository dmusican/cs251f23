def foo(x):
   x[0] = 6
   x = 9

def main():
   a = [5]
   print(a)
   foo(a)
   print(a)

main()
