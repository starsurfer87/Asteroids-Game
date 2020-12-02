class Particle extends GameObject {
  
  int t; //transparency
  
  Particle(PVector startLoc) {
    loc = startLoc;
    vel = new PVector(random(1, 3), 0);
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
    t -= 3;
  }
  
  void act() {
    super.act();
    if (t < 0) {
      lives = 0;
    }
  }
  
}
