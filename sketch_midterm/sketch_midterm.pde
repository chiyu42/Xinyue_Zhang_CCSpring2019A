/***************************************************************************
Updated with timer, start and gameover screen
The ball would still stick to players somehow
but the newly added heart system (add HP) would stick as well
Play would get HP Boost by sticking the heart
and the other player could "knock" the heart off by approaching that player
***************************************************************************/

ArrayList<Circle> circles = new ArrayList<Circle>();
ArrayList<Heart> hearts = new ArrayList<Heart>();


float x = 1280;
float y = 840;
float x1 = 640;
float y1 = 840;
int life = 5;
int life1 = 5;
int m = 120; 
int starttime;
int seconds;
int gamescreen;

void setup(){  
  size(1920, 1080);
  noStroke();
  background(0);    
  spawnCircles(10); 
  spawnHeart(3);
}

void spawnCircles(int noOfCircles){
   //set up the circles arraylist
  for(int counter = 0; counter < noOfCircles; counter++){
    Circle i = new Circle(); 
    i.position = new PVector(random(0,width), random(0,height/2));    
    circles.add(i);
  }
}


void spawnHeart(int noOfHeart){
   //set up the hearts arraylist
  for(int counter = 0; counter < noOfHeart; counter++){
    Heart i = new Heart(); 
    i.position = new PVector(random(0,width), random(0,height/2));    
    hearts.add(i);
  }
}



void draw(){ 
  if(gamescreen == 0){
  startGame();
  }else if(gamescreen == 1){
    game();
  }else if(gamescreen == 2){
    gameOver();
  }
}

void startGame(){
  gamescreen = 0;
  background(0);
  textAlign(CENTER);
  textSize(30);
  text("Click to Start", width/2, height/2);
}


void game(){
  gamescreen = 1;
  background(0);
  cat(x, y, 150, 10, 255);
  cat(x1, y1, 150, 10, 150);  
  drawCircles(); 
  drawHeart();  
    //text objects
  textAlign(CENTER);
  fill(255);
  noStroke();
  textSize(50);
  text("Life= " + life, 1770, 150);
  fill(150);
  text("Life= " + life1, 150, 150); 
  //timer
  m =  millis();
  seconds =  - m / 1000;
  starttime = 40 + seconds;
  textSize(50);
  if(starttime > 20){
    fill(255);
  }else{
    fill(255, 0, 0);
  }  
  text("Timer: " + starttime, width/2, 80);
  
  if( starttime <= 0){
  gameOver();
  }
}  


void gameOver() {
  gamescreen = 2;
  background(0);
  textAlign(CENTER);
  fill(255);
  textSize(30);
  text("Game Over", width/2, height/2 - 40);
  if(life1 > life){
    text("Grey Wins!", width/2, height/2);
  }else if(life1 < life){
    text("White Wins!", width/2, height/2);
  }else if(life1 == life){
    text("Draw!", width/2, height/2);
  }
  textSize(15);
  text("Click to Restart", width/2, height/2 + 40);
}


void keyPressed(){
  if(keyCode == RIGHT){
    x += 40;
  }
  if (keyCode == LEFT) {
    x -= 40;
  }
    if(keyCode == UP){
    y -= 40;
  }
  if (keyCode == DOWN){
    y += 40;
  }
    if(key == 'd' || key == 'D'){
    x1 += 40;
  }
  if (key == 'a' || key == 'A'){
    x1 -= 40;  
  }
    if(key == 'w' || key == 'W'){
    y1 -= 40;
  }
  if (key == 's' || key == 'S'){
    y1 += 40;
  }  
}

void mousePressed(){
  if(gamescreen == 0){
    game();
  }
  if(gamescreen == 2){
    starttime = 40;
    startGame();
  }
}


void drawCircles(){
  for(int counter = 0; counter < circles.size(); counter++)
  {
    circles.get(counter).drawCircle();
  }  
}

void drawHeart()
{
  for(int counter = 0; counter < hearts.size(); counter++)
  {
    hearts.get(counter).drawHeart();
  }  
}

void cat(float posx, float posy, float scale, float rotation, float c){  
  pushMatrix();  
  fill(c);
  //background(0);
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
  
  fill(c);
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




    
