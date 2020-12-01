void gameover() {
  background(255, 0, 0);
  
  button(400, 400, 300, 100, "PLAY AGAIN");
}

void gameoverClicks() {
  if (touchingMouse(400, 400, 300, 100)) { //play again
    mode = INTRO;
  }
}
