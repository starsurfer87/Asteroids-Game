void gameover() {
  background(255, 0, 0);
  
  if (victory) {
    text("VICTORY!", width/2, height/2);
  } else {
    text("YOU LOST", width/2, height/2);
  }
  
  button(400, 600, 300, 100, "PLAY AGAIN");
}

void gameoverClicks() {
  if (touchingMouse(400, 600, 300, 100)) { //play again
    mode = INTRO;
    gameSetup();
  }
}
