package Task3;


public class Main {
    public static void main(String[] args) {

        Zoo zoo = new Zoo();

        Centipede centipede = new Centipede(1000);
        Dog dog = new Dog(4);
        Kangaroo kangaroo = new Kangaroo(2);

        zoo.addAnimal(centipede);
        zoo.addAnimal(dog);
        zoo.addAnimal(kangaroo);

        zoo.makeAllSound();

        System.out.println("Total number of legs in my zoo: "+zoo.printNumberOfLegs());

    }
}



