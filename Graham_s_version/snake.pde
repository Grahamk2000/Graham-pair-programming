class Snake{


    
  ArrayList<Point> snakeLocations = new ArrayList<Point>();
   
  int [] dx = {0, 0, -1, 1};
  int [] dy = {-1, 1, 0, 0};
    
   int cols = 25;
   int rows = cols;
  
   int cellWidth = width/cols;
   int cellHeight = height/rows;
   
   int direction = 3;
   int snakeLength = 7;
   int gameOn = 1;
   
   
  Snake(){
    snakeLocations.add( new Point(5, 5 ) );
    
    
    
    
  }
  
  
  void update(){
    
    if (gameOn == 2){
     fill(0);
     snakeLocations.clear();
     textSize(65);
     text("game over", width/2, height/2);
     
      
    }
    
    
    if (gameOn == 1){
    
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
    
    
    if( frameCount % 5 == 0){
      snakeLocations.add( new Point(snakeLocations.get(snakeLocations.size() - 1).x + dx[direction] , snakeLocations.get(snakeLocations.size() - 1).y + dy[direction] ) );
      if (snakeLength < snakeLocations.size() ){
        snakeLocations.remove(0); 
      
        
      }
      
    
    }
    for (int i=0; i<snakeLocations.size(); i++) {
    
      if ((snakeLocations.get(snakeLocations.size() - 1).x  == -1) || (snakeLocations.get(snakeLocations.size() - 1).x  == cols) ||
      (snakeLocations.get(snakeLocations.size() - 1).y  == -1) || (snakeLocations.get(snakeLocations.size() - 1).y  == rows)){
        gameOn = 2;
      
        
      }
      
    }
    
    display();
  }
  }
  
  void display(){
    
      for (int i=0; i<snakeLocations.size(); i++) {
        fill(255, 0, 200);
        rect(snakeLocations.get(i).x * cellWidth, snakeLocations.get(i).y * cellHeight, cellWidth, cellHeight);
        
      }

  
  

}

}
  
  

  
  
  