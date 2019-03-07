void setup(){
  size(1920, 1080);
  noStroke();
  background(0);
}


void draw(){
  //test objects
  if(mouseX > 1000){
    cat(1600, 600, 150, 90);
  }else if( mouseX > 900 || mouseX < 1000){
     cat(width/2, height/2, 200, 30);
  }
  
 
 
  
  
}


//cat(posX, posY, scale of object, rotation range);
void cat(float posx, float posy, float scale, float rotation){
  
  pushMatrix();
  
  fill(255);
  background(0);
  translate(posx, posy);
  //make it rotate back and forth
  if( millis() % 4000 < 1000 ){
    rotate(map(millis()%1000,0,1000,0,radians(-rotation)));
  } else if( millis() % 4000 < 2000 ){
    rotate(map(millis()%1000,0,1000,radians(-rotation),0));
  } else if( millis() % 4000 < 3000 ){
    rotate(map(millis()%1000,0,1000,0,radians(rotation)));
  } else {
    rotate(map(millis()%1000,0,1000,radians(rotation),0));
  }
  ellipse(0, 0, scale, scale); //body
  ellipse(scale/4, 0 - scale/2, scale/4, scale/4);//head
  
  fill(255);
  translate(scale/4, 0-scale/2);
  rotate(-radians(15));//ears
  triangle(0, -scale/16, scale/16, -scale/6, scale/16, -scale/16);
  rotate(radians(45));
  triangle(0, -scale/16, scale/16, -scale/6, scale/16, -scale/16);
  
  fill(0);//eyes
  rotate(-radians(45));
  ellipse(0, -scale/16, scale/32, scale/32);
  rotate(radians(75));
  ellipse(0, -scale/16, scale/32, scale/32);

  popMatrix();
  
  
  
}
