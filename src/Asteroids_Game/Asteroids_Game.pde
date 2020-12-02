/* 
TO DO:
- aim enemy bullets
- fix enemy spawn 
- fix ateroid particles (also add random speed once fixed)
- 
- restart
- visuals
*/

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
int enemyThreshold;

void setup() {
  //pic1 = loadImage("filename.png");
  size(800, 800);
  mode = GAME;
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  myShip = new Spaceship();
  wkey = skey = akey = dkey = spacekey = false;
  enemyTimer = 0;
  enemyThreshold = 100;
  myObjects = new ArrayList<GameObject>();
  for (int n = 0; n < 3; n++) {
    myObjects.add(new Asteroid());
  }
  for (int n = 0; n < 20; n++) {
    myObjects.add(new Particle(new PVector(400, 200)));
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
