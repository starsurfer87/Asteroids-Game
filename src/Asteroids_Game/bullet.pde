class Bullet extends GameObject {
  
  boolean friendly;
  
  // 2. Constructor
  Bullet(boolean f, PVector startLoc, PVector startDir) {
    loc = new PVector(startLoc.x, startLoc.y);
    vel = new PVector(startDir.x, startDir.y);
    vel.setMag(8);
    lives = 1;
    size = 10;
    friendly = f;
  }
  
  void act() {
    super.act();
    if (offScreen()) {
      lives = 0;
    }
  }
  
}
