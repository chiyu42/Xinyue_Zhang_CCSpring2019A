//Four-part drawing with a different line direction in each part. 
  int a = 460;
  int b = a + 40;
  int c = a + b + 40;
  int d = a + c + 40;//a b c and d stands for the starting point of each section on this canvas
  int lineHeight = 0; //determines line direction
void setup(){
  size(1920, 1080);
  background(255);
  strokeWeight(1);
  
}

void draw(){
  
  
  line(20, lineHeight, a, lineHeight);//first section
  line(b, lineHeight, a+b, lineHeight - 120);// section section
  line(c, lineHeight, a+c, lineHeight - 520);// 3rd section
  line(d, lineHeight, a+d, lineHeight - 1020);//4th section
  
  lineHeight = lineHeight + 20;

}
  
