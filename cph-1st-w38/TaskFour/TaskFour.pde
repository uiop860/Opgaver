int intArr[] = {12, 24, 52};
float floatArr[]= {12, 24, 52};
String stringArr[] = {"Kage", "Fisk", "Prut"};
boolean booleanArr[] = {true, false, true};

void setup() {
  printString();
  println("Sum: "+printInt());
  println("Average: "+averageFloat());
}


void printString() {
  for (int i=0; i<stringArr.length; i++) {
    println(stringArr[i]);
  }
}

int printInt() {
  int temp = 0;
  for (int i=0; i<intArr.length; i++) {
    temp = temp + intArr[i];
  }
  return temp;
}

Float averageFloat() {
  float temp =0;
  for (int i=0; i<floatArr.length; i++) {
    temp = temp + floatArr[i];
  }
  return temp/floatArr.length;
}
