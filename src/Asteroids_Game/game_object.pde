class GameObject {
  
  PVector loc;
  PVector vel;
  int lives;
  int size;
  
  GameObject() {
    
  }
  
  void show() {
    strokeWeight(1);
    stroke(255);
    fill(50);
    rect(loc.x, loc.y, size, size);
  }
  
  void act() {
    loc.add(vel);
  }
  
  boolean offScreen() {
    return loc.x > width + size/2 || loc.x < -size/2 || loc.y > height + size/2 || loc.y < -size/2;
  }
}
