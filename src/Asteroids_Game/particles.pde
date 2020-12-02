class Particle extends GameObject {
  
  int t; //transparency
  
  Particle(PVector startLoc) {
    loc = startLoc;
    vel = new PVector(3, 0);
    vel.rotate(radians(random(360)));
    size = 5;
    lives = 1;
    t = 255;
  }
  
  void show() {
    strokeWeight(1);
    stroke(255, t);
    fill(255, t);
    rect(loc.x, loc.y, size, size);
    t -= 1;
  }
  
  void act() {
    super.act();
    if (t < 0) {
      lives = 0;
    }
  }
  
}
