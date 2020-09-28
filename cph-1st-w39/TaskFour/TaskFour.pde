
int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };




void setup() {

  assignment4a(8);
  println(assignment4c(arr));
  assignment4e(1, 1);
}


void assignment4a(int test) {

  for (int i = 0; i <=100; i++) {
    if (i!=0 && i % test == 0) {
      println(i);
    }
  }
}



int[] assignment4c(int[] tempArr) {

  int temp = (int)random(0, tempArr.length);
  int test[]= {0};
  test[0] = tempArr[temp];

  return test;
}



void assignment4d(int temp) {
  while (temp >= 0) {
    temp--;
  }
}



int counter=0;

void assignment4e(int n1, int n2) {
int n3 =0;

  while (n1 <10000) {
    n3 = n1+n2;
    println(n1+"\t"+n2+"\t"+n3);
    n1 = n2;
    n2 = n3;
    counter++;
  }
}
