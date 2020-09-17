
String names[] = {"Brian", "Claus", "Hans", "Solo", "Dennis", "Anders", "Mads", "Frederik", "Jens", "Børge"};

Student[] student;




void setup() 
{
  student = new Student[names.length];
  for (int i=0; i<names.length; i++) 
  {
    student[i] = new Student(names[i]);
    println(student[i]);
  }
}


class Student {
  String name;

  Student(String _name) {
    name = _name;
  }
}
