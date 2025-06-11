//Jennifer Wu
//June 9, 2025
//2-3

//Colours
color lightblue = #caf0f8;
color blue = #B2C6D8;
color yellow = #ffb703;
color offwhite = #E2F1F7;

Snow[] Snowflakes;
int numsnow;

Moon[] myMoons;
int nummoons;

void setup () {
  size(800, 800, P2D);
  background(0);
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
  stroke(255);
  strokeWeight(1);
}

void draw () {
  fill(0);
  rect(width/2, height/2, width, height);
  fill(0);
  rect(width/2, 700, 800, 200);
  fill(250);
  circle(width/2, height/2, 200);
  noFill();
  int n = 0;
  while (n < nummoons) {
    myMoons[n].show();
    myMoons[n].act();
    n++;
  }
  
  fill(255);
  rect(400, 600, width, height/2);
  
  noStroke();
  int i = 0;
  while (i < numsnow) {
    Snowflakes[i].show();
    Snowflakes[i].act();
    i++;
  }
 
}
