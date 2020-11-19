/*
 * Array 2D. 
 * 
 * Demonstrates the syntax for creating a two-dimensional (2D) array.
 * Values in a 2D array are accessed through two index values.  
 * 2D arrays are useful for storing images. In this example, each dot 
 * is colored in relation to its distance from the center of the image. 
 */

import java.util.Random;

Game game = new Game(25, 25, 5);
PFont font;

public void settings() {
  size(1001, 1001);
}

void setup()
{
  frameRate(10);
  font = createFont("Arial", 16, true);
  textFont(font, 40);
}

void keyReleased()
{
  game.onKeyReleased(key);
  game.onKeyReleasedArrow();
}

void keyPressed()
{
  game.onKeyPressed(key);
  game.onKeyPressedArrow();
}

void draw()
{
  if (game.getPlayer1Life()>0 && game.getPlayer2Life()>0) {
    game.update();
    background(0); //Black
    // This embedded loop skips over values in the arrays based on
    // the spacer variable, so there are more values in the array
    // than are drawn here. Change the value of the spacer variable
    // to change the density of the points
    int[][] board = game.getBoard();
    for (int y = 0; y < game.getHeight(); y++)
    {
      for (int x = 0; x < game.getWidth(); x++)
      {
        if (board[x][y] == 0)
        {
          fill(0, 0, 0);
        } else if (board[x][y] == 1)
        {
          fill(0, 0, 255);
        } else if (board[x][y] == 2)
        {
          fill(255, 0, 0);
        } else if (board[x][y] == 3)
        {
          fill(0, 255, 0);
        } else if (board[x][y] == 4)
        {
          fill(255, 255, 0);
        }
        stroke(100, 100, 100);
        rect(x*40, y*40, 40, 40);
      }
    }
    fill(255);
    text("Player1 HP: "+game.getPlayer1Life(), 15, 35);
    text("Player2 HP: "+game.getPlayer2Life(), 705, 35);
  } else if (game.player1Life ==0) {
    text("Player2 has won the game!",(width/2)-230, (height/2)+10);
  }
  else if(game.player2Life == 0){
    text("Player1 has won the game!",(width/2)-230, (height/2)+10);
  }
}
