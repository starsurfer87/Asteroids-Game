class Asteroid extends GameObject {

  Asteroid() {
    loc = new PVector(random(width), random(height));
    vel = new PVector(2, 0);
    vel.rotate(radians(random(360)));
    size = 80;
    lives = 1;
  }
  
  Asteroid(int s, float x, float y) {
    loc = new PVector(x, y);
    vel = new PVector(2, 0);
    vel.rotate(radians(random(360)));
    size = s;
    lives = 1;
  }
  
  void act(){
    super.act();
    if (loc.x > width + 30) loc.x = -30;
    if (loc.x < -30) loc.x = width + 30;
    if (loc.y > height + 30) loc.y = -30; 
    if (loc.y < -30) loc.y = height + 30; 
    
    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Bullet) {
        if (dist(loc.x, loc.y, obj.loc.x, obj.loc.y) <= size/2 + obj.size) {
          obj.lives = 0;
          for (int n = 0; n < 20; n++) {
            myObjects.add(new Particle(loc));
          }
          lives = 0;
          if (size > 20) {
            myObjects.add(new Asteroid(size/2, loc.x, loc.y));
            myObjects.add(new Asteroid(size/2, loc.x, loc.y));
          }
        }
      }
      i++;
    }
  }
}
