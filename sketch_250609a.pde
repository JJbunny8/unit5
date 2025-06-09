//Jennifer Wu
//June 9, 2025
//2-3

Snow[] Snowflakes;
int numsnow;

void setup () {
  size(800, 800, P2D);
  rectMode(CENTER);
  colorMode(HSB);
  noStroke();

  numsnow = 200;
  Snowflakes = new Snow[numsnow]; //constructor

  int i = 0;
  while (i < numsnow) {
    Snowflakes[i] = new Snow();
    i++;
  }
}

void draw () {
  fill(0);
  rect(width/2, height/2, width, height);
  int i = 0;
  while (i < numsnow) {
    Snowflakes[i].show();
    Snowflakes[i].act();
    i++;
  }
 
}
