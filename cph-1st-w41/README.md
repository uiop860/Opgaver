# cph-1st-w41
Today's exercises should be performed in IntelliJ. 
You are to create a new project titled "exercises41". 
For each task below, you must create a new package in the project's src directory. Name it accordingly to the task, e.g. "Task1". 
In each package, create a Main.java with a static Main method which will be used to call the methods required to complete the tasks. 

Please note, that it is quite unusual to have a Main class in each package, yet this is done so for the sake of the exercise.

## Task 1: Aggregation
1.a Create a Driver.java class with the following private fields (use appropriate types): 
- Name
- Age

1.b Create a constructor that populates all the fields above. 

1.c Create a Car.java class with the following private fields (use appropriate types):
- Make
- Model
- Year
- BodyStyle
- Driver

1.d Create a constructor, that populates all the fields above, except the Driver. 

1.e Create a Getter and a Setter for the Driver variable.

1.f override the toString method in the Car class, returning:
     "Make: "+make+". Model: "+model+ " ("+ year + "), BodyStyle: "+bodyStyle
     
1.g override the toString method in the Driver class, returning: 
    " is driven by "+name

1.h In the main method, instantiate a new Driver, populating the fields with your own name and age. 

1.i In the main method, instantiate a new car, populating the field with whatever values you see fit. 

1.j In the main method, assign the driver to the car created, using the setter method created in step 1.e

1.k print the toString method of the car you've created followed by the toString method of the driver. 

1.l In the main method, create yet another car and assign the same driver to this car. 

1.m repeat the step 1.k for the new car created in 1.l. 


## Task 2: Composition
2.a Create a Room.java class with the following fields (use appropriate types): 
- Walls.java
- numberOfDoors
- numberOfLamps
- numberOfWindows

2.b Create a constructor that populates all the fields above.

2.c Create getters() for each of the fields above. 

2.d Create a Building.java class with the following fields (use appropriate types):
- Rooms (make sure to use the \'final\' keyword here .(Tess: - if you have ever heard about it. The code should work either way ;).
- numberOfBathrooms
- numberOfFloors
- isOfficeBuilding

2.e Create a constructor that populates all the fields above. 

2.f Create getters() for each of the fields above. 
    
2.g In your main method, instantiate at least three different rooms. 

2.h Add the three rooms to a collection (preferably of the same data type used for the "Rooms" field in your Building.java class).

2.i In your main method, instantiate a new building.

2.j print the total number of lamps in the entire building.

2.k make an if statement that checks if numberOfFloors > number of Rooms. if true, then print "This is an odd building". 



## Task 3: Interfaces & Inheritance 
Create an interface called AnimalSound.java 
    - declare a method called "makeSound();" in it. 

Create Animal.java
- give it a private field called numberOfLegs using an appropriate data type. 
- add a constructor, that sets the above field. 
- add a getter for the numberOfLegs field. 
- have it implement the interface AnimalSound
- the makeSound() method must print the following: "Undefined animal makes no sound."

Create Zoo.java:
- add a Collection of the type Animal called "animals", e.g. an ArrayList (make sure to initialize it).
- add a method called makeAllSounds(). This must loop through all elements in the above collection and call the makeSound() on the element. 
- add a method called addAnimal() that takes in a new Animal as a parameter and adds it to the animals collection. 
- add a method called printNumberOfLegs() that loops through all elements in the animals collection and sums up the number of legs before printing ("Total number of legs in my zoo: "+legs);

Create animals: 
- You are to create 3 animals of your own choosing. 
- Each animal must have their own class that extends the Animal class. 
- The constructor of each of the animals must take in an int as a parameter (numberOfLegs) and call super(numberOfLegs) in its body. 
- Two of the animals must @Override the makeSound method, printing a line with what the specific animal sound like. e.g. ("Tiger goes grrrr"); 
- The last animal must not override the makeSound method. 

In the Main.java: 
- Create a new instance of Zoo
- Create instances of each of your 3 animals. 
- Call the zoo.addAnimal() method with each of your 3 animal objects. 
- Call the zoo.makeSounds() method. 
- Call the zoo.printNumberOfLegs() method. 
