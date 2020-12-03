void intro() {
  background(0, 255, 0);
  button(400, 200, 300, 150, "START");
}

void introClicks() {
  if (touchingMouse(400, 200, 300, 150)) { //start
    mode = GAME;
  }
  
}
