void intro() {
  background(0, 255, 0);
  button(200, 200, 170, 80, "EASY", 40);
  button(400, 200, 170, 80, "MEDIUM", 40);
  button(600, 200, 170, 80, "HARD", 40);
}

void introClicks() {
  if (touchingMouse(200, 200, 170, 80)) { //easy
    mode = GAME;
    for (int n = 0; n < 1; n++) {
      myObjects.add(new Asteroid());
    }
    enemyThreshold = 1500;
  }
  
  if (touchingMouse(400, 200, 170, 80)) { //medium
    mode = GAME;
    for (int n = 0; n < 2; n++) {
      myObjects.add(new Asteroid());
    }
    enemyThreshold = 1000;
  }
  
  if (touchingMouse(600, 200, 170, 80)) { //hard
    mode = GAME;
    for (int n = 0; n < 3; n++) {
      myObjects.add(new Asteroid());
    }
    enemyThreshold = 500;
  }
}
