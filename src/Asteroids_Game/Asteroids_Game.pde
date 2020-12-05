/* 
TO DO:
- health meter
- visuals
*/

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

Spaceship myShip;
ArrayList<GameObject> myObjects;

boolean wkey, skey, akey, dkey, spacekey;
boolean victory;
int enemyTimer;
int enemyThreshold;

PImage outerspace;
PImage heart;
ArrayList<PImage> gif;
int f;
int inc;

PFont gameFont;

void setup() {
  size(800, 800);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  gameSetup();
  
  gif = new ArrayList<PImage>();
  String gifDir = "asteroids-gif";
  File dataDir = new File(sketchPath() + "/data/" + gifDir); 
  File[] files = dataDir.listFiles();
  for (File file : files) { 
    PImage frame = loadImage(gifDir + "/" + file.getName());
    gif.add(frame);
  }
  outerspace = loadImage("stars-background2.jpg");
  heart = loadImage("health-heart.png");
  
  gameFont = loadFont("PlayMeGamesReguler-150.vlw");
  textFont(gameFont);
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
