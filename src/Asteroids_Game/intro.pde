void intro() {
  background(0, 255, 0);
  button(400, 600, 200, 100, "QUIT");
  button(400, 200, 300, 150, "START");
  button(400, 400, 100, 80, "HI", 30);
}

void introClicks() {
  if (touchingMouse(400, 200, 300, 150)) { //start
    mode = GAME;
  }
  
  if (touchingMouse(400, 600, 200, 100)) { //quit
    mode = GAMEOVER;
  }
}
