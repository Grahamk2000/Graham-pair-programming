
//test

Grid alpha;
Snake theSnake;


int cols = 25;
int rows = cols;

void setup() {
  size(700, 700);
  
  alpha = new Grid(cols, rows);
  theSnake = new Snake();
  
}

void draw() {
  background(255);
  
  alpha.display();
  theSnake.update();
  
}