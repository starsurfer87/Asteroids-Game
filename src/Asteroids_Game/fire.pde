class Fire extends GameObject {
  
  int t; //transparency
  
  Fire() {
    loc = myShip.loc.copy();
    vel = myShip.dir.copy();
    vel.rotate(radians(180 + random(-15, 15))); 
    vel.setMag(5);
    size = 1;
    lives = 1;
    t = 255;
  }
  
  void show() {
    strokeWeight(1);
    stroke(255, 0, 0, t);
    fill(255, 0, 0, t);
    rect(loc.x, loc.y, size, size);
    t -= 5;
  }
  
  void act() {
    super.act();
    if (t < 0) {
      lives = 0;
    }
  }
  
}
