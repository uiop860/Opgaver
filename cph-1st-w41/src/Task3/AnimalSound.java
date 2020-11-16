package Task3;

public interface AnimalSound {

    default void makeSound(){
        System.out.println("Undefined animal makes no sound.");
    }
}
