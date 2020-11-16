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
    for(int i =0; i<factor; i++){
      --x;
    }
    if(x < 0)
    {
      x = 0;
    }
  }
  
  public void moveRight(int factor)
  {
    for(int i =0; i<factor; i++){
      ++x;
    }
    if(x > maxX)
    {
      x = maxX;
    }
  }
  
  public void moveUp(int factor)
  {
    for(int i =0; i<factor; i++){
      --y;
    }
    if(y < 0)
    {
      y = 0;
    }
  }
  
  public void moveDown(int factor)
  {
    for(int i =0; i<factor; i++){
      ++y;
    }
    if(y > maxY)
    {
      y = maxY;
    }
  }
}
