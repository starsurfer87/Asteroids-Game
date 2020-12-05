ArrayList<PImage> gif;
PImage testImage;
int f;
int inc;

void setup() {
  size(800, 800);
  gif = new ArrayList<PImage>();
  String gifDir = "asteroids-gif";
  File dataDir = new File(sketchPath() + "/data/" + gifDir); 
  File[] files = dataDir.listFiles();
  for (File file : files) { 
    PImage frame = loadImage(gifDir + "/" + file.getName());
    gif.add(frame);
  }
  f = 0;
  inc = 1;
  //testImage = gif.get(0);
}

void draw() {
  //image(testImage, 0, 0, 400, 400);
  image(gif.get(f), 0, 0, width, height);
  f += inc;
  if (f == gif.size() - 1 || f == 0) inc *= -1;
}
