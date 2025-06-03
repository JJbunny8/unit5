//Jennifer Wu
// June 2, 2025
// 2-3

Star[] myStars;
int numstars;

void setup () {
  size(800, 800, P2D);
  rectMode(CENTER);
  colorMode(HSB);
  noStroke();

  numstars = 200;
  myStars = new Star[numstars]; //constructor

  int i = 0;
  while (i < numstars) {
    myStars[i] = new Star();
    i++;
  }
}

void draw () {
  fill(0, 20);
  rect(width/2, height/2, width, height);
  int i = 0;
  while (i < numstars) {
    myStars[i].show();
    myStars[i].act();
    i++;
  }
 
}
