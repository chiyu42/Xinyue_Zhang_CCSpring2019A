/*a drawing with 4 circles, each is filled with the complementary color
its opposite circle. these circles rotate around the central point and the radius 
of rotation will expand with mouse moving from right to left.
*/
int rot;
void setup(){
  size(1920, 1080);
  background(0);
  noStroke();
  colorMode(HSB, 360, 100, 100);//set color mode to hsb
  
}

void draw(){
  float pos = map(mouseX, 50, width, 0, 500); //user input, just for fun
  background(0);
  
  pushMatrix();
  translate(width/2, height/2); //set translate point.
  rotate(radians(PI+rot));
  
  fill(0, 100, 100);//four circles with different colores
  ellipse(pos, 0, 200, 200);
  fill(90, 100, 100);
  ellipse(-pos, 0, 200, 200);
  fill(180, 100, 100);
  ellipse(0, pos, 200, 200);
  fill(270, 100, 100);
  ellipse(0, -pos, 200, 200);
  
  rot = rot + 15; //rotate by itself
  popMatrix();
  
  
   
}
