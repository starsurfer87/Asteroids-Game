class Bullet extends GameObject {
  
  boolean friendly;
  
  // 2. Constructor
  Bullet(boolean f, PVector startLoc, PVector startDir) {
    loc = startLoc.copy();
    vel = startDir.copy();
    vel.setMag(8);
    lives = 1;
    size = 10;
    friendly = f;
    if (friendly) {
      colour = #B6E35B;
    } else {
      colour = #DF80FF;
    }
  }
  
  void act() {
    super.act();
    if (offScreen()) {
      lives = 0;
    }
  }
  
}
