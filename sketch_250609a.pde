//Jennifer Wu
//June 9, 2025
//2-3

//Colours
//color lightblue = #caf0f8;
//color blue = #B2C6D8;
color offwhite = #E2F1F7;

Snow[] Snowflakes;
int numsnow;

Moon[] myMoons;
int nummoons;

Sled[] sleds;
int numsleds;

void setup () {
  size(800, 800, P2D);
  rectMode(CENTER);

  numsnow = 200;
  Snowflakes = new Snow[numsnow]; //constructor

  int i = 0;
  while (i < numsnow) {
    Snowflakes[i] = new Snow();
    i++;
  }
    
  nummoons = 30;
  myMoons = new Moon[nummoons]; //constructor

  int n = 0;
  while (n < nummoons) {
    myMoons[n] = new Moon();
    n++;
  }
  
  numsleds = 10;
  sleds = new Sled[numsleds]; //constructor

  int s = 0;
  while (s < numsleds) {
    sleds[s] = new Sled();
    s++;
  }
  stroke(255);
  strokeWeight(1);
}

void draw () {
  fill(0);
  rect(width/2, height/2, width, height);
  fill(250);
  circle(width/2, height/2, 200);
  noFill();
  int n = 0;
  while (n < nummoons) {
    myMoons[n].show();
    myMoons[n].act();
    n++;
  }
  
  noStroke();
  fill(255);
  ellipse(200, 850, 1500, height);
  int s = 0;
  while (s < numsleds) {
    sleds[s].show();
    sleds[s].act();
    s++;
  }

  int i = 0;
  while (i < numsnow) {
    Snowflakes[i].show();
    Snowflakes[i].act();
    i++;
  }
 
}
