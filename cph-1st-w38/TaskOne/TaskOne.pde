void setup(){
  printEmptyLine();
  printStringFunction("Hejsa");
  printNameAndAge("Oliver Stæhr",23);
}


void printEmptyLine(){
  println();
}

void printStringFunction(String test){
  println(test);
}

void printNameAndAge(String name,int age){
  println("My name is "+name+", I am "+age+" years old.");
}
