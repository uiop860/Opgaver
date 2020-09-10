int number;
int counter = 0;

void setup()
{
  while (counter <= 20)
  {
    if ((number % 2)==0)
    {
      print(number+" ");
    }
    number++;
    counter++;
  }
}

void draw()
{
}
