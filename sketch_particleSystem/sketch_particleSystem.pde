ParticleSystem p1 = new ParticleSystem();
ParticleSystem p2 = new ParticleSystem();
ParticleSystem p3 = new ParticleSystem();
ParticleSystem p4 = new ParticleSystem();//4 particle systems
void setup(){
  size(1920, 1080);
  background(0);
  noStroke();
 
}


void draw(){
  
  if(mousePressed){
   p1.origin = new Vector2D(mouseX, mouseY);
  p2.origin = new Vector2D(mouseX, 1080 - mouseY);
  p3.origin = new Vector2D(1920 - mouseX, mouseY);
  p4.origin = new Vector2D(1920 - mouseX, 1080 - mouseY); //4 origins mirroring each other
  }else{
    p1.stop(); //stop when mouse is not pressed
    p2.stop();
    p3.stop();
    p4.stop();
  }
 
  p1.addParticle();
  p2.addParticle();
  p3.addParticle();
  p4.addParticle();
  
  p1.run();
  p2.run();
  p3.run();
  p4.run();//particle moves and creat little icebergs
  
 
}
