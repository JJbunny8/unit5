//Jennifer Wu
//May 22, 2025
//2-3

PImage[] gif;
int numberOfFrames;
int f;

void setup() {
  
  numberOfFrames = 61;
  gif = new PImage[numberOfFrames];
  
  int i = 0;
  while(i < numberOfFrames) {
    gif[i] = loadImage("frame_"+i+"_delay-0.1s.gif");
    i = i + 1;
  }
  
  size(1000, 1000);
  
}

void draw () {
  image(gif[f], 0, 0, width, height);
  f = f + 1;
  if (f == numberOfFrames) f = 0;
  
}
