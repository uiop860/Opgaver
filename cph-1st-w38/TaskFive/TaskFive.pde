

String names[] = {"Brian", "Claus", "Hans", "Solo", "Dennis", "Anders", "Mads", "Frederik", "Jens", "Børge"};

Student[] student = new Student[names.length];




void setup() 
{
  noLoop();
  for (int i=0; i<names.length; i++) 
  {
    student[i] = new Student(names[i]);
  }
}

void draw()
{
  for (int i=0; i<names.length; i++) {
    println(student[i]);
  }
}
