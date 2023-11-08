from typing import Union


def doit(x: Union[int, str]) -> int:
    y = int(x)
    print(len(y))
    if type(x) == 'int':
        return int(x)
    else:
        return len(x)
