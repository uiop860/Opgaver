// colors
color red = color(255, 0, 0);
color yellow = color(255, 255, 0);
color green = color(0, 255, 0);
color grey = color(127);
color black = color(0);
color white = color(255);

// color changer variables
color redLight;
color yellowLight;
color greenLight;

//sizes
int circleWidth = 100;

void setup()
{
  //setup
  size(300, 750);
  background(white);

  //black panel  
  fill(black);
  rect(0, 0, width, height, 75);

  //lights setup grey
  noStroke();
  fill(grey);
  circle(width/2, height-625, width-circleWidth);
  fill(grey);
  circle(width/2, height/2, width-circleWidth);
  fill(grey);
  circle(width/2, height-125, width-circleWidth);
}

void draw()
{
  if (keyPressed == true)
  {
    //lights changer colors
    fill(redLight);
    circle(width/2, height-625, width-circleWidth);
    fill(yellowLight);
    circle(width/2, height/2, width-circleWidth);
    fill(greenLight);
    circle(width/2, height-125, width-circleWidth);
  }
}

void keyPressed()
{
  //keybord controller
  if (key == 'a' || key == 'A')        // a or A to change light to red
  {
    redLight = red;
    yellowLight = grey;
    greenLight = grey;
  } 
  else if (key == 's' || key == 'S')   // s or S to change light to red and yellow
  {
    redLight = red;
    yellowLight = yellow;
    greenLight = grey;
  } 
  else if (key == 'd' || key == 'D')   // d or D to change light to green
  {
    redLight = grey;
    yellowLight = grey;
    greenLight = green;
  }
}
