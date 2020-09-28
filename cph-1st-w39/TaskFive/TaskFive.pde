
int[][] board = new int[8][8];

int sideLength = 40;

void setup() {
  size(350, 350);

  for (int x = 0; x<board.length; x++) 
  {
    for (int y = 0; y<board.length; y++) 
    {

      if ((x+y+1) % 2 ==0) {
        board[x][y] = 0;

      } else {
        board [x][y] = 1;

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
