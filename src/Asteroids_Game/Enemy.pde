class Enemy extends GameObject {
  
  PVector dir;
  int shotTimer;
  int threshold;

  Enemy() {
    loc = new PVector(0, random(height));
    float rn = random(0, 1);
    if (rn < 0.5) loc.x = width;
    vel = new PVector(width/2 - loc.x, height/2 - loc.y);
    vel.setMag(3);
    vel.rotate(radians(random(-10, 10)));
    dir = new PVector(myShip.loc.x - loc.x, myShip.loc.y - loc.y);
    size = 50;
    lives = 1;
    shotTimer = 0;
    threshold = 70;
  }
  
  void show() {
    pushMatrix();
    strokeWeight(3);
    stroke(255, 0, 0);
    fill(100);
    translate(loc.x, loc.y);
    rotate(dir.heading());
    rect(0, 0, size, size);
    line(0, 0, 50, 0);
    popMatrix();
  }
  
  void act() {
    super.act();
    
    shotTimer++;
    dir = new PVector(myShip.loc.x - loc.x, myShip.loc.y - loc.y);
    
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
      myObjects.add(new Bullet(false, loc, dir));
      shotTimer = 0;
    }
    
    if (offScreen()) lives = 0;
  }
}
