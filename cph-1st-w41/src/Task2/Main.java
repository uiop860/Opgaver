package Task2;

import java.util.ArrayList;
import java.util.List;

public class Main {

    public static void main(String[] args) {


         List<Room> rooms = new ArrayList<>();
         rooms.add(new Room(2,1,2));
         rooms.add(new Room(1,2,4));
         rooms.add(new Room(3,4,2));

        Building building = new Building(2,2,false,rooms);

        int totalLamps=0;
        for (int i = 0; i <building.getRooms().size() ; i++) {
            totalLamps += building.getRooms().get(i).getNumberOfLamps();
        }

        if (building.getNumberOfFloors() > building.getRooms().size()){
            System.out.println("This is a weird building");
        }


        System.out.println(totalLamps);

    }
}
