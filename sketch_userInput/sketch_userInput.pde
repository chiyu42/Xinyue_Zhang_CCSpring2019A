void setup(){
  size(1920, 1080);
  background(255);
  fill(255, 192, 203); //pinky pink
  stroke(255, 192, 203);// still pinky pink
  smooth();//smooth pinky pink
  
}

void draw(){
 
 
}

//draw shape when mouse is clicked
void mousePressed(){
  
 float x = random(0, 1920); //generate shapes from random position
 float y = random(0, 1080);

  //pinky heart
  beginShape();
  vertex(x, y); 
  bezierVertex(x, y - 20, x + 40, y - 10, x, y + 25); 
  vertex(x, y); 
  bezierVertex(x, y - 20, x - 40, y - 10, x, y + 25); 
  endShape();

  
}
