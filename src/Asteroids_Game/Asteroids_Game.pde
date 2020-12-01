int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

Spaceship myShip;
ArrayList<Bullet> myBullets;
Asteroid myAsteroid;

boolean wkey, skey, akey, dkey, spacekey;

void setup() {
  size(800, 800);
  mode = GAME;
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  myShip = new Spaceship();
  wkey = skey = akey = dkey = spacekey = false;
  myBullets = new ArrayList<Bullet>();
  myAsteroid = new Asteroid();
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("ERROR! Mode = " + mode);
  }
}
