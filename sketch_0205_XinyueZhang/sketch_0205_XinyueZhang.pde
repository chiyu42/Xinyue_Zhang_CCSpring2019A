
void setup(){
  size(1340, 950);
  background(0);
  stroke(0);
  strokeWeight(0);
  
  quad(150, 75, 1265, 75, 1265, 950, 1190, 950); //big white triangle
  
  fill(150, 0, 255, 80); // light purple line
  triangle(275, 125, 1200, 125, 1200, 135);
  
  fill(75, 0, 255, 100); //blueish purple line
  triangle(1200, 125, 1200, 870, 1190, 870);
  
  fill(0, 0, 255, 150); //blue line
  triangle(275, 125, 290, 125, 1190, 870);
  
  fill(255, 100, 0, 250);//orange triangles
  triangle(215, 75, 335, 75, 275, 125);
  triangle(210, 125, 275, 125, 245, 156);
  triangle(1105, 870, 1190, 870, 1190, 940);
  triangle(1190, 870, 1265, 870, 1265, 940);
  triangle(1200, 75, 1265, 125, 1200, 125);
  triangle(1265, 75, 1330, 125, 1265, 125);
  
  fill(0, 255, 0, 150);//green triangles
  triangle(1265, 125, 1330, 175, 1265, 175);
  triangle(1265, 175, 1330, 225, 1265, 225);
  triangle(1265, 225, 1330, 275, 1265, 275);
  
  fill(255, 255, 0, 150);//yellow triangles
  triangle(1265, 275, 1330, 325, 1265, 325);
  triangle(1265, 325, 1330, 375, 1265, 375);
  triangle(1265, 375, 1330, 425, 1265, 425);
  
  fill(150, 0, 255, 100);//purple triangles
  triangle(1265, 425, 1330, 475, 1265, 475);
  triangle(1265, 475, 1330, 525, 1265, 525);
  
}

void draw(){
  
}
