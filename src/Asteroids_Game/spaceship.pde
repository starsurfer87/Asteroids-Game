class Spaceship {
  
  // 1. Instance Variables (or Fields)
  PVector loc; //location
  PVector dir; //direction
  PVector vel; // velocity
  float size;
  int lives;
  
  // 2. Constructor: name must match the class
  Spaceship() {
    loc = new PVector(width/2, height/2);
    dir = new PVector(0.1, 0);
    vel = new PVector(0, 0);
    size = 50;
    lives = 3;
  }
  
  // 3. Behaviour Functions
  void show() {
    pushMatrix();
    strokeWeight(3);
    stroke(255);
    fill(100);
    translate(loc.x, loc.y);
    rotate(dir.heading());
    rect(0, 0, size, size);
    line(0, 0, 50, 0);
    popMatrix();
  }
  
  void act() {

    if (akey) dir.rotate(-radians(5));
    if (dkey) dir.rotate(radians(5));
    if (wkey) vel.add(dir);
    if (skey) vel.sub(dir);
    if (spacekey) myBullets.add(new Bullet());
    
    loc.add(vel);
    
    if (loc.x > width + 25) loc.x = -25;
    if (loc.x < -25) loc.x = width + 25;
    if (loc.y > height + 25) loc.y = -25; 
    if (loc.y < -25) loc.y = height + 25; 

  }
  
}
