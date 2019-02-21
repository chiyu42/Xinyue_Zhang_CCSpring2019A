  int xpos = 1920;
  int ypos = 1080;
  float[] xPos = new float[xpos];
  float[] yPos = new float[ypos];
  int i;
  int j;
void setup(){
  size(1920, 1080);
  background(255);
  fill(255, 192, 203); //pinky pink
  stroke(255, 192, 203);// still pinky pink
  smooth();//smooth pinky pink
  
  while(i <xpos || j < ypos){
   xPos[i] = random(0, xpos);
   yPos[j] = random(0, ypos); //generates random position
   beginShape();
  vertex(xPos[i], yPos[j]); 
  bezierVertex(xPos[i], yPos[j] - 20, xPos[i] + 40, yPos[j] - 10, xPos[i], yPos[j] + 25); 
  vertex(xPos[i], yPos[j]); 
  bezierVertex(xPos[i], yPos[j] - 20, xPos[i] - 40, yPos[j] - 10, xPos[i], yPos[j] + 25); 
  endShape();//draw hearts
   }
}

void draw(){
 
 
}
