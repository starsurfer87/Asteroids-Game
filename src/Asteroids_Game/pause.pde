
void pause() {
  image(outerspace, 0, 0, 1920, 1080); //for "stars-background.jpg"
  fill(#A74FC4);
  textSize(150);
  text("PAUSED", width/2, 210);
  fill(#B6E35B);
  textSize(145);
  text("PAUSED", width/2, 200);
  button(400, 450, 200, 100, "RESUME");
  button(400, 600, 200, 100, "QUIT");
}

void pauseClicks() {
  if (touchingMouse(400, 450, 200, 100)) { //resume
    mode = GAME;
  }
  if (touchingMouse(400, 600, 200, 100)) { //quit
    mode = INTRO;
    gameSetup();
  }
}
