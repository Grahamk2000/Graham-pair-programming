class Snake{


    
  ArrayList<Point> snakeLocations = new ArrayList<Point>();
   
  int [] dx = {0, 0, -1, 1};
  int [] dy = {-1, 1, 0, 0};
    
   int cols = 25;
   int rows = cols;
  
   int cellWidth = width/cols;
   int cellHeight = height/rows;
   
   int direction = 2;
   
   
  Snake(){
    snakeLocations.add( new Point(5, 5 ) );
    
    
    
    
  }
  
  
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
    
    snakeLocations.add( new Point(snakeLocations.get(0).x + dx[direction] , snakeLocations.get(0).y + dy[direction] ) );
    
    
    
    
    display();
  }
  
  
  void display(){
    
      for (int i=0; i<snakeLocations.size(); i++) {
        fill(255, 0, 200);
        rect(snakeLocations.get(i).x * cellWidth, snakeLocations.get(i).y * cellHeight, cellWidth, cellHeight);
        
      }

  
  

}

}
  
  

  
  
  