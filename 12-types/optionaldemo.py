from typing import Optional


def doit(x: Optional[int]) -> int:
    return x+1
    # if x is not None:
    #     return x+1
    # else:
    #     return 0


def main():
    thing = 7
    print(doit(thing))
