class Keys
{
  private boolean wDown = false;
  private boolean aDown = false;
  private boolean sDown = false;
  private boolean dDown = false;

  private boolean upKeyDown = false;
  private boolean leftKeyDown = false;
  private boolean downKeyDown = false;
  private boolean rightKeyDown = false;

  public Keys() {
  }

  public boolean upKeyDown()
  {
    return upKeyDown;
  }
  public boolean leftKeyDown()
  {
    return leftKeyDown;
  }
  public boolean downKeyDown()
  {
    return downKeyDown;
  }
  public boolean rightKeyDown()
  {
    return rightKeyDown;
  }



  public boolean wDown()
  {
    return wDown;
  }

  public boolean aDown()
  {
    return aDown;
  }

  public boolean sDown()
  {
    return sDown;
  }

  public boolean dDown()
  {
    return dDown;
  }





  void onKeyPressed(char ch)
  {
    if (ch == 'W' || ch == 'w')
    {
      wDown = true;
    } else if (ch == 'A' || ch == 'a')
    {
      aDown = true;
    } else if (ch == 'S' || ch == 's')
    {
      sDown = true;
    } else if (ch == 'D' || ch == 'd')
    {
      dDown = true;
    }
  }

  void onKeyReleased(char ch)
  {
    if (ch == 'W' || ch == 'w')
    {
      wDown = false;
    } else if (ch == 'A' || ch == 'a')
    {
      aDown = false;
    } else if (ch == 'S' || ch == 's')
    {
      sDown = false;
    } else if (ch == 'D' || ch == 'd')
    {
      dDown = false;
    }
  }




  void onKeyPressedArrow()
  {
    if (keyCode == UP)
    {
      upKeyDown = true;
    } else if (keyCode == LEFT)
    {
      leftKeyDown = true;
    } else if (keyCode == DOWN)
    {
      downKeyDown = true;
    } else if (keyCode == RIGHT)
    {
      rightKeyDown = true;
    }
  }

  void onKeyReleasedArrow()
  {
    if (keyCode == UP)
    {
      upKeyDown = false;
    } else if (keyCode == LEFT)
    {
      leftKeyDown = false;
    } else if (keyCode == DOWN)
    {
      downKeyDown = false;
    } else if (keyCode == RIGHT)
    {
      rightKeyDown = false;
    }
  }
}
