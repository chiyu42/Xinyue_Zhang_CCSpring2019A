
class Particle{

 
  public Vector2D position = new Vector2D(0, 0);

  public Vector2D velocity = new Vector2D(random(-0.01, -0.01), random(-0.01, -0.01));
  public Vector2D acceleration = new Vector2D(random(-0.05, 0.05), random(-0.05, 0.05));

  public float radius = random(1, 10); //radius of the particles
  public float lifespan = 255; //lifespan of the particle tied to its alpha value (transparency)  
  public float R = 200;//color
  public float G = 200;
  public float B = 255;

  public Particle(){
  }

//position constructor
  public Particle(Vector2D origin){
    this.position.x = origin.x;
    this.position.y = origin.y;
  }

//tell the particles how they show move and change color
  void move(){
    velocity.add(acceleration);
    position.add(velocity);
    R -= 5.0;
    G -= 5.0;
    lifespan -= 4.0 ; 
  }

//tell particles when to appear
  void show(){
    noStroke();
    fill(R, G, B, lifespan);
    ellipse(position.x, position.y, radius, radius);
  }

  
//tell particles when to ddisappear
  boolean isDead(){
    return (lifespan < 0.0);
  }

}
