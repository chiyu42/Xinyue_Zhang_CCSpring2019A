 class Circle{  
   public int diameter = 40;  
   float xSpeed = 0;
  float ySpeed = 10;

   public PVector position = new PVector(100,100);
   public PVector speed  = new PVector(random(-10,8),random(-10,8));
   
  void drawCircle(){
    fill(255, 255, 0);
    ellipse(position.x, position.y, diameter, diameter);
    position.add(speed);
    
    if(position.x > width || position.x < 0){
       speed.x = speed.x * -1; 
    }
    if(position.y > height || position.y < 0){
       speed.y = speed.y * -1; 
    }
    if(dist(x, y, position.x, position.y) <= 150/2 + diameter){
      speed.x = speed.x * -1; 
      speed.y = speed.y * -1; 
      life -= 1;    
    }
    if(dist(x1, y1, position.x, position.y) <= 150/2 + diameter){
      speed.x = speed.x * -1; 
      speed.y = speed.y * -1; 
      life1 -= 1;    
    }
  }
}
