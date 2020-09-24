
int[][] board = new int[9][9];
int counter = 0;
int sideLength = 40;

void setup() {
  size(320, 320);

  for (int x = 0; x<board.length; x++) 
  {
    for (int y = 0; y<board.length; y++) 
    {

      if (counter % 2 ==0) {
        board[x][y] = 0;
        counter++;
      } else {
        board [x][y] = 1;
        counter++;
      }
    }
  }
}


void draw() {

  for (int x = 0; x<board.length; x++) 
  {
    for (int y = 0; y<board.length; y++) 
    {
      if (board [x][y]==0) {
        fill(0);
      } else {
        fill(255);
      }
      stroke(127);
      rect(x * sideLength, y * sideLength, sideLength, sideLength);
    }
  }
}
