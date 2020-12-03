void game() {
  background(0, 0, 255);
  
  button(125, 100, 200, 100, "WIN");
  button(400, 700, 150, 80, "PAUSE", 35);
  
  myShip.show();
  myShip.act();
  if (enemyTimer > enemyThreshold) {
    myObjects.add(new Enemy());
    enemyTimer = 0;
  }
  
  int i = 0; //starting at object 0
  int asteroidCount = 0;
  while (i < myObjects.size()) {
    //processing each object individually
    GameObject obj = myObjects.get(i); //gets current bullet
    if (obj.lives > 0) {
      obj.show(); //tells current object to draw itself
      obj.act(); //tells current object to update itself
      if (obj instanceof Asteroid) asteroidCount++; 
      i++; //going to the next object
    } else {
      myObjects.remove(i); //throw away object
    }
  }
  enemyTimer++;
  if (asteroidCount == 0) {
    victory = true;
    mode = GAMEOVER;
  }
}

void gameClicks() {
  if (touchingMouse(400, 700, 150, 80)) { //pause
    mode = PAUSE;
  }
  
  if (touchingMouse(125, 100, 200, 100)) { //win
    mode = GAMEOVER;
  }
}
