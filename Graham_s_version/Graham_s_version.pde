Grid alpha;
Snake theSnake;
Point locations;



int cols = 25;
int rows = cols;

void setup() {
  size(700, 700);
  
  alpha = new Grid(cols, rows);
  theSnake = new Snake();
  //locations = new Point();

  
}

void draw() {
  background(255);
  
  alpha.display();
  theSnake.update();
  
}