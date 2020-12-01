class Bullet {
  
  // 1. Instace Variables
  PVector loc, vel;
  int lives;
  int size;
  
  // 2. Constructor
  Bullet() {
    loc = new PVector(myShip.loc.x, myShip.loc.y);
    vel = new PVector(myShip.dir.x, myShip.dir.y);
    vel.setMag(5);
    lives = 1;
    size = 10;
  }
  
  // 3. Behaviour Fuctions
  void show() {
    strokeWeight(1);
    stroke(255);
    fill(200);
    rect(loc.x, loc.y, size, size);
  }
  
  void act() {
    loc.add(vel);
    if (loc.x > width || loc.x < 0 || loc.y > height || loc.y < 0) {
      lives = 0;
    }

  }
}
