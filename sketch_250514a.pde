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
color pink =  #FF0088;
color darkblue = #030558;
color blue =  #0033FF;
color teal =  #00FBFF;
color yellow = #fbf8cc;
color purple = #B700FF;

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

//Gif variables
PImage[] gif;
int numberOfFrames;
int f;

//Score variables
int score;

void setup() {
  numberOfFrames = 61;
  gif = new PImage[numberOfFrames];

  int a = 0;
  while (a < numberOfFrames) {
    gif[a] = loadImage("frame_"+a+"_delay-0.1s.gif");
    a = a + 1;
  }

  size(1000, 1000, P2D);
  px = width/2;
  py = height;
  pd = 120;

  //ball setup
  ballx = width/2;
  bally = width/2;
  balld = 45;

  vx = 15;
  vy = 15;

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
