class Enemy extends GameObject {
  
  PVector dir;
  int shotTimer;
  int threshold;

  Enemy() {
    loc = new PVector(0, random(height));
    float rn = random(0, 1);
    if (rn < 0.5) loc.x = width;
    vel = new PVector(4, 0);
    vel.rotate(random(-80, 80));
    dir = new PVector(1, 0);
    size = 50;
    lives = 1;
    shotTimer = 0;
  }
  
  void act() {
    super.act();
    
    shotTimer++;
    
    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Bullet) {
        if (dist(loc.x, loc.y, obj.loc.x, obj.loc.y) <= size/2 + obj.size && ((Bullet) obj).friendly == true) {
          obj.lives = 0;
          lives = 0;
        }
      }
      i++;
    }
    
    if (shotTimer > threshold) {
      
    }
    
    if (offScreen()) lives = 0;
  }
}
