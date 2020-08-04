class BlackBloodCell {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float size;
  float r;
  float maxforce;
  float maxspeed;

  BlackBloodCell(PVector x) {
    velocity = new PVector(random(0, 0.5), 0);
    acceleration = new PVector(0, 0);
    location = x.copy();
    size = width/50;
    r = 3.0;
//Arbitrary values for maxspeed and force; try varying these!
    maxspeed = 4;
    maxforce = 0.1;
  }

  void run() {
    update();
    display();
    //seek(new PVector(mouseX,mouseY));
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }

  void update() {
    velocity.add(acceleration);
    velocity.x = constrain(velocity.x, -4, 4);
    velocity.y = constrain(velocity.y, -4, 4);
    location.add(velocity);
    acceleration.mult(.9);
  }

  void display() {
    //asteroid = loadImage("asteroid.png");
    fill(0, 0, 0);
    ellipse(location.x, location.y, size, size);
    fill(50, 50, 50);
    ellipse(location.x, location.y, size/2, size/2);
  }
  
  //void seek(PVector target) {
  //  PVector desired = PVector.sub(target,location);
  //  desired.normalize();
  //  desired.mult(maxspeed);
  //  PVector steer = PVector.sub(desired,velocity);
  //  steer.limit(maxforce);
  //  applyForce(steer);
  //}

}
