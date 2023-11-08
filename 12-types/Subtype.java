class Pet {
    public void speak() {
        System.out.println("???");
    }
}

class Dog extends Pet {
    public void speak() {
        System.out.println("woof");
    }
}

class Cat extends Pet {
    public void speak() {
        System.out.println("meow");
    }
}

public class Subtype {
    public static void main(String[] args) {
        Pet happy = new Pet();
        Pet spot = new Dog();
        Pet fluffy = new Cat();
        happy.speak();
        spot.speak();
        fluffy.speak();
    }
}
