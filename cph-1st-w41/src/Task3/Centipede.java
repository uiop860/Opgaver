package Task3;

public class Centipede extends Animal {

    public Centipede(int numberOfLegs) {
        super(numberOfLegs);
    }

    @Override
    public void makeSound(){
        System.out.println("Centi goes slurp slurp.");
    }
}
