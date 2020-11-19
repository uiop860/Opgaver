package Task3;

import java.util.ArrayList;

public class Zoo {

    private ArrayList<Animal> animals;

    public Zoo() {
        animals = new ArrayList<>();
    }

    public void addAnimal(Animal numberOfLegs){
        animals.add((numberOfLegs));
    }

    public void makeAllSound(){
        for (Animal animal : animals) {
            animal.makeSound();
        }
    }

    public int printNumberOfLegs(){
        int sum=0;
        for (Animal animal : animals) {

            sum += animal.getNumberOfLegs();

        }
        return sum;
    }

}

