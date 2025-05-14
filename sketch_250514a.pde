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

//Brick Variables
int []x; // declaration
int []y;

void setup() {
 size(800, 800, P2D);
  px = width/2;
  py = height;
  pd = 120;
  
  //ball setup
  ballx = width/2;
  bally = height/2;
  balld = 50;
  
  vx = 3;
  vy = 3;
  
  //set up array of bricks
  x = new int[3];  //instantiation
  y = new int [3];
  
  x [0] = 100;
  y [0] = 100;
  
  x [1] = 400;
  y [1] = 100;
  
  x [2] = 700;
  y [2] = 100;
  
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

  
