Circle circle = new Circle();
void setup(){
  size(1920, 1080);
  background(0);
  
}

void draw(){
  background(0);
  circle.drawCircle();
  circle.move();
  rect(mouseX, mouseY, 100, 20);
}
