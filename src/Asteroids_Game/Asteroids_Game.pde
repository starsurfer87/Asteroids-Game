int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
//PImage pic1;

Spaceship myShip;
ArrayList<GameObject> myObjects;

boolean wkey, skey, akey, dkey, spacekey;
int enemyTimer;

void setup() {
  //pic1 = loadImage("filename.png");
  size(800, 800);
  mode = GAME;
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  myShip = new Spaceship();
  wkey = skey = akey = dkey = spacekey = false;
  enemyTimer = 0;
  myObjects = new ArrayList<GameObject>();
  for (int n = 0; n < 3; n++) {
    myObjects.add(new Asteroid());
  }
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
  //image(pic1, x, y, w, h);
}
