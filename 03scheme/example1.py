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
