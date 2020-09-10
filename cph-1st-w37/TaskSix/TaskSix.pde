// exercise 6.a variables
int b = 10;
int a = 5;

//exercise 6.b variables
int x = 9;
int y = 8;
int z = 13;
boolean numberCheck = true;


void setup()
{

  //6.a
  if (a == 10 || b == 10 || a+b==10)
  {
    println("Succes");
  } else 
  {
    println("Failure");
  }
  

  //6.b
  if ((x%10)==0 || (y%10)==0 || (z%10)==0)
  {
    println("failure");
    numberCheck = false;
  }
  if (x+y+z==30 && numberCheck==true)
  {
    println("Succes");
  }
}
