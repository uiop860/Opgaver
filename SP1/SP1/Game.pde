import java.util.Random;

class Game
{

  private int width;
  private int height;
  private int[][] board;
  private int player1Life;
  private int player2Life;

  private Random rnd;
  private Keys keys;
  private Dot player1;
  private Dot player2;
  private Dot[] enemies;

  private Dot food;


  Game(int width, int height, int numberOfEnemies)
  {
    if (width < 10 || height < 10)
    {
      throw new IllegalArgumentException("Width and height must be at least 10");
    }
    if (numberOfEnemies < 0)
    {
      throw new IllegalArgumentException("Number of enemies must be positive");
    } 

    this.rnd = new Random();
    this.board = new int[width][height];
    this.width = width;
    this.height = height;
    this.player1Life = 100;
    this.player2Life = 100;


    keys = new Keys();
    player1 = new Dot(0, 0, width-1, height-1);
    player2 = new Dot(width-1, 0, width-1, height-1);
    enemies = new Dot[numberOfEnemies];
    food = new Dot((int)random(0, width-1), (int)random(0, height-1), width-1, height-1);
    for (int i = 0; i < numberOfEnemies; ++i)
    {
      enemies[i] = new Dot(width-1, height-1, width-1, height-1);
    }
  }

  public int getWidth()
  {
    return width;
  }

  public int getHeight()
  {
    return height;
  }

  public int getPlayer1Life()
  {
    if (player1Life <=0) {
      player1Life =0;
    }
    return player1Life;
  }
  public int getPlayer2Life()
  {
    if (player2Life <=0) {
      player2Life =0;
    }
    return player2Life;
  }

  public void onKeyPressed(char ch)
  {
    keys.onKeyPressed(ch);
  }

  public void onKeyReleased(char ch)
  {
    keys.onKeyReleased(ch);
  }

  public void onKeyPressedArrow()
  {
    keys.onKeyPressedArrow();
  }

  public void onKeyReleasedArrow()
  {
    keys.onKeyReleasedArrow();
  }

  public void update()
  {
    updatePlayer1();
    updatePlayer2();
    updateEnemies();
    updateFood();
    checkForCollisionsPlayer1();
    clearBoard();
    populateBoard();
  }



  public int[][] getBoard()
  {
    //ToDo: Defensive copy?
    return board;
  }

  private void clearBoard()
  {
    for (int y = 0; y < height; ++y)
    {
      for (int x = 0; x < width; ++x)
      {
        board[x][y]=0;
      }
    }
  }

  private void updatePlayer1()
  {
    //Update player
    if (keys.wDown() && !keys.sDown())
    {
      player1.moveUp(1);
    }
    if (keys.aDown() && !keys.dDown())
    {
      player1.moveLeft(1);
    }
    if (keys.sDown() && !keys.wDown())
    {
      player1.moveDown(1);
    }
    if (keys.dDown() && !keys.aDown())
    {
      player1.moveRight(1);
    }
  }
  private void updatePlayer2() {
    //Update player
    if (keys.upKeyDown() && !keys.downKeyDown())
    {
      player2.moveUp(1);
    }
    if (keys.leftKeyDown() && !keys.rightKeyDown())
    {
      player2.moveLeft(1);
    }
    if (keys.downKeyDown() && !keys.upKeyDown)
    {
      player2.moveDown(1);
    }
    if (keys.rightKeyDown() && !keys.leftKeyDown())
    {
      player2.moveRight(1);
    }
  }

  private void updateEnemies()
  
  // chases the player closest to itself
  
  {
    for (int i = 0; i < enemies.length; ++i)
    {
      int dxPlayer1 = player1.getX() - enemies[i].getX();
      int dyPlayer1 = player1.getY() - enemies[i].getY();
      int dxPlayer2 = player2.getX() - enemies[i].getX();
      int dyPlayer2 = player2.getY() - enemies[i].getY();
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (abs(dxPlayer1) <= abs(dxPlayer2) && abs(dyPlayer1) <= abs(dyPlayer2)) {
        if (rnd.nextInt(3) < 2)
        {
          //We follow

          if (abs(dxPlayer1) > abs(dyPlayer1))
          {
            if (dxPlayer1 > 0)
            {
              //Player is to the right
              enemies[i].moveRight(1);
            } else
            {
              //Player is to the left
              enemies[i].moveLeft(1);
            }
          } else if (dyPlayer1 > 0)
          {
            //Player is down;
            enemies[i].moveDown(1);
          } else
          {//Player is up;
            enemies[i].moveUp(1);
          }
        } else
        {
          //We move randomly
          int move = rnd.nextInt(4);
          if (move == 0)
          {
            //Move right
            enemies[i].moveRight(1);
          } else if (move == 1)
          {
            //Move left
            enemies[i].moveLeft(1);
          } else if (move == 2)
          {
            //Move up
            enemies[i].moveUp(1);
          } else if (move == 3)
          {
            //Move down
            enemies[i].moveDown(1);
          }
        }
      } else {
        if (rnd.nextInt(3) < 2)
        {
          //We follow

          if (abs(dxPlayer2) > abs(dyPlayer2))
          {
            if (dxPlayer2 > 0)
            {
              //Player is to the right
              enemies[i].moveRight(1);
            } else
            {
              //Player is to the left
              enemies[i].moveLeft(1);
            }
          } else if (dyPlayer2 > 0)
          {
            //Player is down;
            enemies[i].moveDown(1);
          } else
          {//Player is up;
            enemies[i].moveUp(1);
          }
        } else
        {
          //We move randomly
          int move = rnd.nextInt(4);
          if (move == 0)
          {
            //Move right
            enemies[i].moveRight(1);
          } else if (move == 1)
          {
            //Move left
            enemies[i].moveLeft(1);
          } else if (move == 2)
          {
            //Move up
            enemies[i].moveUp(1);
          } else if (move == 3)
          {
            //Move down
            enemies[i].moveDown(1);
          }
        }
      }
    }
  }

  private void updateFood() {
    
    // flees from the player closest to itself


    int dxPlayer1 = player1.getX() - food.getX();
    int dyPlayer1 = player1.getY() - food.getY();
    int dxPlayer2 = player2.getX() - food.getX();
    int dyPlayer2 = player2.getY() - food.getY();
    
    if ((abs(dxPlayer1) <= abs(dxPlayer2) && abs(dyPlayer1) <= abs(dyPlayer2))) {
      //Should we flee or move randomly?
      //2 out of 3 we will flee..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        if (abs(dxPlayer1) > abs(dyPlayer1))
        {
          if (dxPlayer1 > 0)
          {
            //Player is to the right
            food.moveLeft(1);
          } else
          {
            //Player is to the left
            food.moveRight(1);
          }
        } else if (dyPlayer1 < 0)
        {
          //Player is down;
          food.moveDown(1);
        } else
        {//Player is up;
          food.moveUp(1);
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          food.moveRight(1);
        } else if (move == 1)
        {
          //Move left
          food.moveLeft(1);
        } else if (move == 2)
        {
          //Move up
          food.moveUp(1);
        } else if (move == 3)
        {
          //Move down
          food.moveDown(1);
        }
      }
    } else {
      //Should we flee or move randomly?
      //2 out of 3 we will flee..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        if (abs(dxPlayer2) > abs(dyPlayer2))
        {
          if (dxPlayer2 > 0)
          {
            //Player is to the right
            food.moveLeft(1);
          } else
          {
            //Player is to the left
            food.moveRight(1);
          }
        } else if (dyPlayer2 < 0)
        {
          //Player is down;
          food.moveDown(1);
        } else
        {//Player is up;
          food.moveUp(1);
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          food.moveRight(1);
        } else if (move == 1)
        {
          //Move left
          food.moveLeft(1);
        } else if (move == 2)
        {
          //Move up
          food.moveUp(1);
        } else if (move == 3)
        {
          //Move down
          food.moveDown(1);
        }
      }
    }
  }

  private void populateBoard()
  {
    //Insert player
    board[player1.getX()][player1.getY()] = 1;
    board[player2.getX()][player2.getY()] = 4;
    board[food.getX()][food.getY()] = 3;
    //Insert enemies
    for (int i = 0; i < enemies.length; ++i)
    {
      board[enemies[i].getX()][enemies[i].getY()] = 2;
    }
  }

  private void checkForCollisionsPlayer1()
  {
    //Check enemy collisions
    for (int i = 0; i < enemies.length; ++i)
    {
      if (enemies[i].getX() == player1.getX() && enemies[i].getY() == player1.getY())
      {
        //We have a collision
        --player1Life;
      } else if (enemies[i].getX() == player2.getX() && enemies[i].getY() == player2.getY()) {
        --player2Life;
      }
    }
    if (food.getX() == player1.getX() && food.getY() == player1.getY()) {
      food = new Dot((int)random(0, width-1), (int)random(0, height-1), width-1, height-1);
      player1Life = player1Life +10;
    } else if (food.getX() == player2.getX() && food.getY() == player2.getY()) {
      food = new Dot((int)random(0, width-1), (int)random(0, height-1), width-1, height-1);
      player2Life = player2Life +10;
    }
  }
}
