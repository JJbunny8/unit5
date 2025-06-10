//Jennifer Wu
//June 9, 2025
//2-3

//Colours
color lightblue = #caf0f8;
color blue = #B2C6D8;

Snow[] Snowflakes;
int numsnow;

Sky[] lights;
int numsky;

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
    
  numsky = 50;
  lights = new Sky[numsky]; //constructor
  
  int n = 0;
  while (n < numsky) {
    lights[n] = new Sky();
    n++;
  }
}

void draw () {
  fill(blue);
  rect(width/2, height/2, width, height);
  fill(lightblue);
  rect(width/2, 700, 800, 200);
  
  int i = 0;
  while (i < numsnow) {
    Snowflakes[i].show();
    Snowflakes[i].act();
    i++;
  }
  
  int n = 0;
  while (n < numsky) {
    lights[n].show();
    lights[n].act();
    i++;
  }
 
}
