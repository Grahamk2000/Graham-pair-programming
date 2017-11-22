
//test

Grid theGrid;
Snake theSnake;


int cols = 25;
int rows = cols;

void setup() {
  size(700, 700);
  
  theGrid = new Grid(cols, rows);
  ArrayList<Snake> theSnake = new ArrayList<Snake>();
  
}

void draw() {
  background(255);
  
  theGrid.display();
  theSnake.update();
  
}