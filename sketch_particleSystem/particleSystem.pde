

class ParticleSystem{
  ArrayList<Particle> particles = new ArrayList<Particle>(); 
  Vector2D origin = new Vector2D(0, 0); 
 
  public ParticleSystem(){

  }

//position constructors
  public ParticleSystem(Vector2D o){
    origin.x = o.x;
    origin.y = o.y;
  }
  public ParticleSystem(float x, float y){
    origin.x = x;
    origin.y = y;
  }

 //methods to make the particles in the system appear, accelerate towards a direction and then disappear.
  public void run(){    
    for(int i = 0; i < particles.size(); i++){
      Particle p = particles.get(i); 
      p.show(); 
      p.move(); 
      if(p.isDead()){
        particles.remove(i);
      }
    }
  }

//add particle to the system
  public void addParticle(){
    particles.add(new Particle(origin));
  }
  
  //tell processing to stop emitt particles
  public void stop(){
    for(int i = 0; i < particles.size(); i++){
        particles.remove(i);
    }
  }

}
