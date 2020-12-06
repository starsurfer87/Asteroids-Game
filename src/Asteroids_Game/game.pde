void game() {
  background(0);
  //image(outerspace, 0, 0, 1920, 1080); //for "stars-background.jpg" 1422, 800
  //image(outerspace, 0, 0, 1420, 800); //for stars-background2 jpg
  
  button(80, 750, 130, 60, "PAUSE", 35);
  
  //health bar
  int offset = 50;
  for (int life = 0; life < myShip.lives; life++) {
  image(heart, width - offset, 20, 40, 40);
  offset += 50;
  }
  
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
  if (touchingMouse(80, 750, 130, 60)) { //pause
    mode = PAUSE;
  }
}
