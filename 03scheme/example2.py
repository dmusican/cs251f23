# What are side-effects again?
# Side-effect = something else a function changes
# or some effect it has, beyond just taking input
# and producing a return value

# remove_last, with no side-effects
def remove_last(lst):
    result = lst[:len(lst)-1]
    return result

items = [1, 2, 3]
new_items = remove_last(items)
print(new_items)
print(items)

# remove_first, with lots of side-effects
count = 0
def remove_first(lst):
    global count
    count = count + 1   # side-effect
    lst.pop()      # removes first item from lst
                    # ... so it's a side-effect
    print("working")   # side-effect
    return None
