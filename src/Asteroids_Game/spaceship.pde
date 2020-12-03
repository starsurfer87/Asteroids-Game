class Spaceship extends GameObject{
  
  // 1. Instance Variables (or Fields)
  PVector dir; //direction
  int shotTimer, threshold;
  int collisionTimer;
  
  // 2. Constructor: name must match the class
  Spaceship() {
    loc = new PVector(width/2, height/2);
    dir = new PVector(0.1, 0);
    vel = new PVector(0, 0);
    size = 50;
    lives = 5;
    shotTimer = 0;
    threshold = 50;
  }
  
  // 3. Behaviour Functions
  void show() {
    pushMatrix();
    strokeWeight(3);
    stroke(255);
    if (collisionTimer > 0) {
      fill(255);
    } else {
      fill(100);
    }
    translate(loc.x, loc.y);
    rotate(dir.heading());
    rect(0, 0, size, size);
    line(0, 0, 50, 0);
    popMatrix();
  }
  
  void act() {
    super.act();
    
    if (lives <= 0) mode = GAMEOVER; 
    shotTimer++;
    collisionTimer--;
    
    if (akey) dir.rotate(-radians(5));
    if (dkey) dir.rotate(radians(5));
    if (wkey) {
      vel.add(dir);
      for (int n = 0; n < 3; n++) {
      myObjects.add(new Fire());
      }
    }
    if (skey) vel.sub(dir);
    if (spacekey && shotTimer > threshold) {
      myObjects.add(new Bullet(true, loc, dir));
      shotTimer = 0;
    }
    
    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (dist(loc.x, loc.y, obj.loc.x, obj.loc.y) <= size/2 + obj.size/2) {
        if (obj instanceof Bullet && ((Bullet) obj).friendly == false) {
          obj.lives = 0;
          lives --;
        } else if (obj instanceof Asteroid && collisionTimer <= 0) {
          lives --;
          collisionTimer = 30;
        }
      }
      i++;
    }
    
    if (loc.x > width + 25) loc.x = -25;
    if (loc.x < -25) loc.x = width + 25;
    if (loc.y > height + 25) loc.y = -25; 
    if (loc.y < -25) loc.y = height + 25; 
  }
  
}
