package Task2;

import java.util.ArrayList;
import java.util.List;

public class Building {
    final private List<Room> rooms;
    private int numberOfBathrooms;
    private  int numberOfFloors;
    private boolean isOfficeBuilding;

    public Building(int numberOfBathrooms, int numberOfFloors, boolean isOfficeBuilding, List<Room> rooms) {

        this.numberOfBathrooms = numberOfBathrooms;
        this.numberOfFloors = numberOfFloors;
        this.isOfficeBuilding = isOfficeBuilding;
        this.rooms = rooms;
    }

    public List<Room> getRooms() {
        return rooms;
    }

    public int getNumberOfBathrooms() {
        return numberOfBathrooms;
    }

    public int getNumberOfFloors() {
        return numberOfFloors;
    }

    public boolean isOfficeBuilding() {
        return isOfficeBuilding;
    }
}
