from random import randrange
items = [('horse', 9), ('cow', 3), ('zebra', 0)]
print(sorted(items))

# key is a function of one parameter
# that tells you what the value of the thing
# should be for comparison purposes

# dumb way
def get_second_item(animal_facts):
    return animal_facts[1]

print(sorted(items, key=get_second_item))

print(sorted(items, key=lambda t: t[1]))
print(sorted(items,
    key=lambda animal_facts: animal_facts[1]))

print(sorted(items, key=lambda val: randrange(1000)))

# Make a new list where each item is one
# more than in a previous list
items = [9, 2, 1, 3, 5]
new_items = items.copy()
for i in range(len(new_items)):
    new_items[i] = new_items[i] + 1
print(new_items)
