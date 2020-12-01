class Bullet extends GameObject {
  
  boolean friendly;
  
  // 2. Constructor
  Bullet(boolean f) {
    loc = new PVector(myShip.loc.x, myShip.loc.y);
    vel = new PVector(myShip.dir.x, myShip.dir.y);
    vel.setMag(8);
    lives = 1;
    size = 10;
    friendly = f;
  }
  
  Bullet(boolean f, int index) {
    GameObject obj = myObjects.get(index);
    loc = new PVector(obj.loc.x, obj.loc.y);
    vel = new PVector(((Enemy) obj).dir.x, ((Enemy) obj).dir.y);
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
