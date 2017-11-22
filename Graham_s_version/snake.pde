class Snake{
  
   int cols = 10;
   int rows = cols;
  
   int cellWidth = width/cols;
   int cellHeight = height/rows;
   
   int direction;
   

  
  
  ArrayList<Snake> snakeX = new ArrayList<Snake>();
  ArrayList<Snake> snakeY = new ArrayList<Snake>();
  
  int [] dx = {0, 0, -1, 1};
  int [] dy = {-1, 1, 0, 0};
  

  
  
  void update(){
    
    if (keyPressed && key ==  'w'){
     direction = 0; 

     
     
    }
    if (keyPressed && key ==  's'){
     direction = 1; 
    }
    
    if (keyPressed && key ==  'a'){
     direction = 2; 
    }
    
    if (keyPressed && key ==  'd'){
     direction = 3; 
    }



         
      snakeX.add(0, snakeX.get(0) + dx[direction]);
      snakeY.add(0, snakeY.get(0) + dy[direction]);

    
    
    
    display();
  }
  
  
  void display(){
    
    fill(0, 255, 0);
    rect(snakeX*cellWidth, snakeY*cellHeight, cellWidth, cellHeight);
    
    
  }
  
  
 
  
  
  
  
}


//class Snake {
  
  

// int snakeLength; 
// ArrayList <Snake> theSnake = new ArrayList<Snake>();
// //int cols = 50;
// //int rows = cols;
// int x = 3;
// int y = 3;
// int cellWidth = width/cols;
// int cellHeight = height/rows;
// int direction = 1;

  
//  void update(){
//    //directions up = 1, right = 2, down = 3, left = 4
    
//    if (keyPressed) {
//      if (key == 'w') {
//        direction = 1;
//      }
//      if (key == 's') {
//      direction = 3;
//      }
//      if (key == 'a') {
//       direction = 4;
//      }
//      if (key == 'd') {
//      direction = 2;
//      }
//    }   
    
//    if (direction == 1){
//      y -= 1;
//    }
//    if (direction == 2){
//      x += 1;
//    }
//    if (direction == 3){
//      y += 1;
//    }
//    if (direction == 4){
//      x -= 1;
//    }
    
    
//    display();
//  }
  
  
//  void display(){
//    fill(0);
//    rect(x*cellWidth, y*cellHeight, cellWidth, cellHeight); 
    
    
    
//  }
//}