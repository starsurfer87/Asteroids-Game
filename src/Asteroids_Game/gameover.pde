void gameover() {
  image(outerspace, 0, 0, 1920, 1080); //for "stars-background.jpg"
  
  if (victory) {
    textSize(150);
    text("VICTORY!", width/2, 310);
    fill(#B6E35B);
    textSize(145);
    text("VICTORY!", width/2, 300);
  } else {
    textSize(150);
    text("YOU LOST", width/2, 310);
    fill(#B6E35B);
    textSize(145);
    text("YOU LOST", width/2, 300);
  }
  
  button(400, 600, 300, 100, "PLAY AGAIN");
}

void gameoverClicks() {
  if (touchingMouse(400, 600, 300, 100)) { //play again
    mode = INTRO;
    gameSetup();
  }
}
