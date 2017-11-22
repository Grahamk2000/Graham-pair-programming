class Grid {
  //data
  int[][] board;
  int cols;
  int rows;
  int cellWidth;
  int cellHeight;
  
 Grid(int _cols, int _rows){
   cols = _cols;
   rows = _rows;
   cellWidth = width/cols;
   cellHeight = height/rows;
   board = new int[cols][rows]; 
    
    
  }


void display() {
  
    strokeWeight(.5);
  for (int x=0; x<cols; x++) {
    for (int y=0; y<rows; y++) {
      fill(150);
      rect(x*cellWidth, y*cellHeight, cellWidth, cellHeight); 
 
    }
  }
}
  
  
  
}