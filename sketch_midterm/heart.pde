class Heart{   
   float xSpeed = 0;
   float ySpeed = 10;
   float opacity = 255;
   public PVector position = new PVector(100,100);
   public PVector speed  = new PVector(random(-10,8),random(-10,8));
   
  void drawHeart(){  
    fill(255, 192, 203, opacity);
    beginShape();
    vertex(position.x, position.y); 
    bezierVertex(position.x, position.y - 20, position.x + 40, position.y - 10,
    position.x, position.y + 25); 
    vertex(position.x, position.y); 
    bezierVertex(position.x, position.y - 20, position.x - 40, position.y - 10, 
    position.x, position.y + 25); 
    endShape();

    position.add(speed);
    
    if(position.x > width || position.x < 0){
       speed.x = speed.x * -1; 
    }    
    if(position.y > height || position.y < 0){
       speed.y = speed.y * -1; 
    }     
    if(dist(x, y, position.x, position.y) <= 150/2){
      speed.x = speed.x * -1; 
      speed.y = speed.y * -1; 
      life += 1;    
    }
    if(dist(x1, y1, position.x, position.y) <= 150/2){
      speed.x = speed.x * -1; 
      speed.y = speed.y * -1; 
      life1 += 1;    
    }
  }
}
