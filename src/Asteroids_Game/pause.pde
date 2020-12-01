
void pause() {
  background(0);
  
  button(400, 400, 200, 100, "RESUME");
}

void pauseClicks() {
  if (touchingMouse(400, 400, 200, 100)) { //resume
    mode = GAME;
  }
}
