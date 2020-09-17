Student student1;
Student student2;
Teacher teacher;

void setup() {
  student1 = new Student("Oliver", 23, false, 'B');
  student2 = new Student("Rolander", 23, false, 'B');

  teacher = new Teacher("Jesper", 54, true);

  println("Teacher: "+teacher.name);
  println("Student: "+student1.name+" Hold: "+student1.datamatikerTeam);
  println("Student: "+student2.name+" Hold: "+student2.datamatikerTeam);
}
