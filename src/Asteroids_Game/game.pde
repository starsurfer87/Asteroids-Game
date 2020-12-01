void game() {
  background(0, 0, 255);
  
  button(125, 100, 200, 100, "WIN");
  button(400, 700, 150, 80, "PAUSE", 35);
  
  myShip.show();
  myShip.act();
  myAsteroid.show();
  myAsteroid.act();
  
  println(myBullets.size());
  
  int i = 0; //starting at bullet 0
  while (i < myBullets.size()) {
    //processing each bullet individually
    Bullet b = myBullets.get(i); //gets current bullet
    if (b.lives > 0) {
    b.show(); //tells current bullet to draw itself
    b.act(); //tells current bullet to update itself
    i++; //going to the next bullet
    } else {
      myBullets.remove(i); //throw away bullet
    }
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
