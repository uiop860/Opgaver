

// Virker for alle tal
int input = -50;
int inputStart=input;

void setup()
{
  if (inputStart>0)
  {
    while (input >=0)
    {
      if (input==6)
      {
        print("six ");
        input--;
      }
      if ((input)==inputStart/2 && input!=0 && input!=inputStart)
      {
        print("HALF ");
        input--;
      }
      print(input+" ");
      input--;
    }
  }
  if (inputStart<0)
  {
    while (input <=0)
    {
      if (input==-6)
      {
        print("-six ");
        input++;
      }
      if ((input)==inputStart/2 && input!=0 && input!=inputStart)
      {
        print("HALF ");
        input++;
      }
      print(input+" ");
      input++;
    }
  }
  if (inputStart==0)
  {
  println(" Nu er du bare træls");
  }
}

void draw()
{
}
