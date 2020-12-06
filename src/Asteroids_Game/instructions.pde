void instructions() {
  image(outerspace, 0, 0, 1920, 1080); //for "stars-background.jpg"
  
  textSize(130);
  text("HOW TO PLAY", width/2, 110);
  fill(#B6E35B);
  textSize(125);
  text("HOW TO PLAY", width/2, 100);
  
  stroke(#A74FC4);
  strokeWeight(3);
  fill(255);
  rect(400, 400, 700, 350);
  fill(#A74FC4);
  textSize(40);
  text("Use the 'W' and 'S' keys to move", 400, 300);
  text("Use the 'A' and 'D' keys to rotate", 400, 350);
  text("Use the space key to shoot", 400, 400);
  text("To win the game, destroy all the asteroids", 400, 450);
  
  button(400, 700, 250, 80, "LET'S PLAY", 40);
}

void instructionsClicks() {
  if (touchingMouse(400, 700, 250, 80)) { //play
    mode = INTRO;
  }
}
