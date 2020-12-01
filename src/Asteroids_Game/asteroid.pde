class Asteroid {
  
  PVector loc, vel;
  int size;
  int lives;
  
  Asteroid() {
    loc = new PVector(random(width), random(height));
    vel = new PVector(2, 0);
    vel.rotate(radians(random(360)));
    size = 60;
    lives = 1;
  }
  
  void show() {
    strokeWeight(3);
    stroke(255);
    fill(30);
    rect(loc.x, loc.y, size, size);
  }
  
  void act(){
    
    loc.add(vel);
    
    if (loc.x > width + 30) loc.x = -30;
    if (loc.x < -30) loc.x = width + 30;
    if (loc.y > height + 30) loc.y = -30; 
    if (loc.y < -30) loc.y = height + 30; 
    
  }
}
