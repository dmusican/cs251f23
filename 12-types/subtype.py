class Dog:
    def speak(self):
        print("woof")


class Cat:
    def speak(self):
        print("meow")


class Giraffe:
    pass


def main():
    spot = Dog()
    fluffy = Cat()
    longneck = Giraffe()

    spot.speak()
    fluffy.speak()
    # longneck.speak()


main()
