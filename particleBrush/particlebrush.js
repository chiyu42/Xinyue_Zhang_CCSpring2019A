let system;
let system2;
let system3;
let system4;

function setup() {
  createCanvas(860, 540);
  
  background(0);
}

function draw() {
  system = new ParticleSystem(createVector(mouseX, mouseY));
  system2 = new ParticleSystem(createVector(mouseX, height- mouseY));
  system3 = new ParticleSystem(createVector(width - mouseX, mouseY));
  system4 = new ParticleSystem(createVector(width- mouseX, height - mouseY));

  system.addParticle();
  system2.addParticle();
  system3.addParticle();
  system4.addParticle();

  if(mouseIsPressed){
  system.run();
  system2.run();
  system3.run();
  system4.run();
  }
}

function mouseMoved(){

}



class Particle {
    constructor(position) {
        this.acceleration = createVector(-1, 1);
        this.velocity = createVector(random(-5, 5), random(-5, 5));
        this.position = position.copy();
        this.radius = 10;
        this.lifespan = 255;
    }
    run() {
        this.update();
        this.display();
    }
    
    update() {
        this.velocity.add(this.acceleration);
        this.position.add(this.velocity);
        this.lifespan -= 30;
        this.radius -= 1;
    }
    // Method to display
    display() {
        noStroke();
        fill(0, 0, 255, this.lifespan);
        ellipse(this.position.x, this.position.y, this.radius, this.radius);
    }
    // Is the particle still useful?
    isDead() {
        return this.lifespan < 0;
    }
}





class ParticleSystem {
    constructor(position) {
        this.origin = position.copy();
        this.particles = [];
    }
    addParticle() {
        this.particles.push(new Particle(this.origin));
    }
    run() {
        for (let i = this.particles.length - 1; i >= 0; i--) {
            let p = this.particles[i];
            p.run();
            if (p.isDead()) {
                this.particles.splice(i, 1);
            }
        }
    }
}


