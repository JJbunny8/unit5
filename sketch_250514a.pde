//Jennifer Wu
//May 14, 2025
//2-3

// mode varibles
int mode;

final int INTRO = 0;
final int GAME = 1;

//Colour Pallette
color white = #ffffff;
color black = #000000;
color pink =  #FDD4DE;
color blue =  #bde0fe;
color green = #b9fbc0;
color yellow = #fbf8cc;
color purple = #cfbaf0;

// Player variables
float px, py, pd;

//Ball variables
float ballx, bally, balld;
float vx, vy;

//Keyboard variables
boolean leftKey, rightKey;

//Arrays Variables
int []x; // declaration
int []y;
boolean[] alive;
int brickd;
int n;
int tempx, tempy;

//Score variables
int score;

void setup() {
  size(1000, 1000, P2D);
  px = width/2;
  py = height;
  pd = 120;

  //ball setup
  ballx = width/2;
  bally = width/2;
  balld = 50;

  vx = 3;
  vy = 3;

  brickd = 70;
  n = 36;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];

  tempx = 100;
  tempy = 100;

  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 100;
    if (tempx == width) {
      tempx = 100;
      tempy = tempy + 100;
    }
    i = i + 1;
  }
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else {
    println ("Error, mode is " + mode);
  }
}
