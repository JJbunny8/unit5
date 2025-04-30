//Jennifer Wu
//April 29, 2025
//2-3

//Colour Pallette
color white = #ffffff;
color black = #000000;
color pink =  #FDD4DE;

// Player variables
float playerx, playery, playerd;
float playerx2, playery2, playerd2;

//Ball variables
float ballx, bally, balld;
float vx, vy;

//Keyboard variables
boolean wKey, sKey, aKey, dKey, upKey, downKey, leftKey, rightKey;

void setup() {
  size(600, 600, P2D);
  playerx = width/2;
  playery = height/2;
  playerd = 100;
  
  playerx2 = width/2;
  playery2 = height/2;
  playerd2 = 100;
  
  //ball setup
  ballx = width/2;
  bally = 50;
  balld = 50;
  
  vx = 2;
  vy = 3;
  
}

void draw() {
  background(white);
  
  //player 1
  strokeWeight(5);
  stroke(black);
  fill(white);
  circle(playerx, playery, playerd);
  
  //player 2
  strokeWeight(5);
  stroke(white);
  fill(black);
  circle(playerx2, playery2, playerd2);
  
  //ball
  strokeWeight(3);
  stroke(0);
  fill(pink);
  circle(ballx, bally, balld);
  
  //ball movement
  ballx = ballx + vx;
  bally = bally + vy;
  
  //player movement
  if (wKey) playery -= 5;
  if (sKey) playery +=5;
  if (aKey) playerx -= 5;
  if (dKey) playerx += 5;
  if (upKey) playery2 -= 5;
  if (downKey) playery2 += 5;
  if (leftKey) playerx2 -= 5;
  if (rightKey) playerx2 += 5;
  
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
  
  if ( dist(playerx, playery, ballx, bally) <= playerd/2 + balld/2 ) {
    vx = vy = 0;
    
  }
}

void keyPressed() {
  if (key == 'w') wKey = true;
  if (key == 's') sKey = true;  
  if (key == 'a') aKey = true;
  if (key == 'd') dKey = true; 
  
  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == RIGHT) rightKey = true;
}

void keyReleased () {
 if (key == 'w') wKey = false;
 if(key == 's') sKey = false;
 if (key == 'a') aKey = false;
 if(key == 'd') dKey = false;
 
 if (keyCode == UP) upKey = false;
 if(keyCode == DOWN) downKey = false;
 if (keyCode == LEFT) leftKey = false;
 if(keyCode== RIGHT) rightKey = false;
}
