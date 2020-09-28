class Dot
{
  private int x;
  private int y;
  private final int maxX;
  private final int maxY;
  
  public Dot(int x, int y, int maxX, int maxY)
  {
    this.x = x;
    this.y = y;
    this.maxX = maxX;
    this.maxY = maxY;
  }
  
  public int getX()
  {
    return x;
  }
  
  public int getY()
  {
    return y;
  }
  
  public void moveLeft(int factor)
  {
    //--x;
    for(int i =0; i<factor; i++){
      --x;
    }
    //x = x - factor;
    if(x < 0)
    {
      x = 0;
    }
  }
  
  public void moveRight(int factor)
  {
    //++x;
    for(int i =0; i<factor; i++){
      ++x;
    }
    //x = x + factor;
    if(x > maxX)
    {
      x = maxX;
    }
  }
  
  public void moveUp(int factor)
  {
    //--y;
    for(int i =0; i<factor; i++){
      --y;
    }
    //y = y - factor;
    if(y < 0)
    {
      y = 0;
    }
  }
  
  public void moveDown(int factor)
  {
    //++y;
    for(int i =0; i<factor; i++){
      ++y;
    }
    //y = y + factor;
    if(y > maxY)
    {
      y = maxY;
    }
  }
}
