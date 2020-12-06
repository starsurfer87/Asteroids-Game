void intro() {
  image(gif.get(f), 0, 0, 1440, 800);
  f += inc;
  if (f == gif.size() - 1 || f == 0) inc *= -1;
  
  fill(#A74FC4);
  textSize(150);
  text("ASTEROIDS", width/2, 310);
  fill(#B6E35B);
  textSize(145);
  text("ASTEROIDS", width/2, 300);
  
  button(200, 500, 170, 80, "EASY", 40);
  button(400, 500, 170, 80, "MEDIUM", 40);
  button(600, 500, 170, 80, "HARD", 40);
  button(400, 650, 200, 65, "HOW TO PLAY", 30);
}

void introClicks() {
  if (touchingMouse(200, 500, 170, 80)) { //easy
    mode = GAME;
    for (int n = 0; n < 1; n++) {
      myObjects.add(new Asteroid());
    }
    enemyThreshold = 1500;
  }
  
  if (touchingMouse(400, 500, 170, 80)) { //medium
    mode = GAME;
    for (int n = 0; n < 2; n++) {
      myObjects.add(new Asteroid());
    }
    enemyThreshold = 1000;
  }
  
  if (touchingMouse(600, 500, 170, 80)) { //hard
    mode = GAME;
    for (int n = 0; n < 3; n++) {
      myObjects.add(new Asteroid());
    }
    enemyThreshold = 500;
  }
  
  if (touchingMouse(400, 650, 250, 80)) { //instructions
    mode = INSTRUCTIONS;
  }
}
