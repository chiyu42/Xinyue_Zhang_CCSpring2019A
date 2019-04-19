 class Circle{ 
   public int diameter = 40;  
   float x = 960;
   float y = 40;
   float xSpeed = 0;
   float ySpeed = -10;
   float gravity = 0.98;
   float bounce = -0.85;
   
   
  void drawCircle(){
    fill(255, 255, 0);
    ellipse(x, y, diameter, diameter);
  }
  
  void move(){
    ySpeed += gravity;
    y += ySpeed;
    if(y > mouseY - 5){
      ySpeed *=bounce;
    }
  }
  
  
}
