//Jennifer Wu
//April 29, 2025
//2-3

//Colour Pallette
color white = #ffffff;
color black = #000000;
color pink =  #FDD4DE;

// Player variables
float player1x, player1y, player1d;
float player2x, player2y, player2d;

//Ball variables
float ballx, bally, balld;
float vx, vy;

//Score variables
int p1score;

//Keyboard variables
boolean wKey, sKey, aKey, dKey, upKey, downKey, leftKey, rightKey;

void setup() {
  size(600, 600, P2D);
  player1x = 500;
  player1y = 100;
  player1d = 100;
  
  player2x = width/2;
  player2y = height/2;
  player2d = 100;
  
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
  circle(player1x, player1y, player1d);
  fill(255,0,0);
  textSize(30);
  text(p1score, player1x, player1y);
  
  //player 2
  strokeWeight(5);
  stroke(white);
  fill(black);
  circle(player2x, player2y, player2d);
  
  //ball
  strokeWeight(3);
  stroke(0);
  fill(pink);
  circle(ballx, bally, balld);
  
  //net
  strokeWeight(3);
  stroke(0);
  fill(0);
  circle(width/2, height, 200);
  
  //ball movement
  ballx = ballx + vx;
  bally = bally + vy;
  
  //player movement
  if (wKey) player1y -= 5;
  if (sKey) player1y +=5;
  if (aKey) player1x -= 5;
  if (dKey) player1x += 5;
  if (upKey) player2y -= 5;
  if (downKey) player2y += 5;
  if (leftKey) player2x -= 5;
  if (rightKey) player2x += 5;
  
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
  
  if ( dist(player1x, player1y, ballx, bally) <= player1d/2 + balld/2 ) {
    vx = (ballx - player1x)/5; 
    vy = (bally - player1y)/5;
  }
  
  if ( dist(player2x, player2y, ballx, bally) <= player2d/2 + balld/2 ) {
    vx = (ballx - player2x)/5; 
    vy = (bally - player2y)/5;
  }
  
  if ( dist(width/2, height, ballx, bally) <= 100 + balld/2 ) {
    p1score = p1score + 1;
    ballx = width/2;
    bally = 50;
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
