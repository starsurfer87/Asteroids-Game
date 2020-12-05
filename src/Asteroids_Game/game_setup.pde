void gameSetup() {
  mode = INTRO;
  victory = false;
  myShip = new Spaceship();
  wkey = skey = akey = dkey = spacekey = false;
  enemyTimer = 0;
  myObjects = new ArrayList<GameObject>();
  f = 0;
  inc = 1;
}
