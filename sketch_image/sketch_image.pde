PImage img;
PImage destination;
float threshold = 100;
float threshStep = 2;

float R = 150;
float G = 60;
float B = 100;
float colorStep = 40;

void setup(){

  size(1920, 1080);

  img = loadImage("scene#3.png");
 destination = createImage(img.width, img.height, RGB);
  background(255);
}



void draw(){
  img.loadPixels();
  for(int y = 0; y < img.height; y ++){
    for(int x = 0; x < img.width; x ++){
    int loc = x + (y * img.width);

      if(brightness(img.pixels[loc]) < threshold){
        destination.pixels[loc] = color(R, G, B);
      }else{
        destination.pixels[loc] = color(-R, -G, -B);
      }
    }
  }
  destination.updatePixels();

  image(destination, 0, 0, width, height);


  threshold += threshStep;
  R += colorStep;
  G -= colorStep;
  B += colorStep;

  if(threshold > 255 || threshold < 2){
    threshStep *= -1;
  }
  if(R > 215 || R < 40){
    colorStep *= -1;
  }
  if(G > 215 || G < 40){
    colorStep *= -1;
  }
  if(B > 215 || B < 40){
    colorStep *= -1;
  }
}
  
