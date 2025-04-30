//Jennifer Wu
//April 30, 2025
//2-3

color pink =  #FDD4DE;

float ballx, bally, balld;
float vx, vy;
float ax, ay;

void setup() {
  size(600, 600, P2D);
  ballx = width/2;
  bally = height/2;
  balld = 50;
  
  vx = 2;
  vy = 3;
  
  ax = 0;
  ay = 1;
  
}


void draw() {
  //background(255);
  strokeWeight(3);
  stroke(0);
  fill(pink);
  circle(ballx, bally, balld);
  
  //movement
  ballx = ballx + vx;
  bally = bally + vy;
  
  //gravity
  vx = vx +ax;
  vy = vy +ay;
  
  //bouncing code
  if (bally <= 0) { //top
    vy = vy * -0.9;
    bally = 0;
  }
  
  if (bally >= height) { //bottom
    vy = vy * -0.9;
    bally = height;
  }
  
  if (ballx <= 0) { //right
    vx = vx * -0.9;
    ballx = 0;
  }
  
  if (ballx >= width) { //left
    vx = vx * -0.9;
    ballx = width;
  }
}
