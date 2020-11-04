package Task1;

public class Main {

    public static void main(String[] args){

        Driver driver1 = new Driver("Oliver",23);

        Car car1 = new Car("Volkswagen","Golf",2017,"Sport");
        Car car2 = new Car("Skoda","Octavia",2015,"Max Comfort");

        car1.setDriver(driver1);
        car2.setDriver(driver1);

        System.out.println(car1.toString());
        System.out.println(car1.getDriver().toString());

        System.out.println(car2.toString());
        System.out.println(car2.getDriver().toString());

    }

}
