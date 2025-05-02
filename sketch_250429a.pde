//import processing.sound.*;

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
int p1score, p2score;

//SoundFile fail, success, music;

//Keyboard variables
boolean wKey, sKey, aKey, dKey, upKey, downKey, leftKey, rightKey;

void setup() {
  //loading assets
  //fail = new SoundFile(this, "FAILURE.wav");
 //music = new SoundFile(this, "MUSIC.mp3");
  size(600, 600, P2D);
  player1x = width/2;
  player1y = 0;
  player1d = 150;
  
  player2x = width/2;
  player2y = height;
  player2d = 150;
  
  //ball setup
  ballx = width/2;
  bally = 300;
  balld = 100;
  
  vx = 2;
  vy = 3;
  
  //music. loop();
  //music.amp(0.2);
  //music. pan();
  
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
  text(p1score, 100, 50);
  
  //player 2
  strokeWeight(5);
  stroke(white);
  fill(black);
  circle(player2x, player2y, player2d);
  fill(255,0,0);
  textSize(30);
  text(p2score, 500, 550);
  
  //ball
  strokeWeight(3);
  stroke(0);
  fill(pink);
  circle(ballx, bally, balld);
  
  //ball movement
  ballx = ballx + vx;
  bally = bally + vy;
  
  if (bally > 700) {
    bally = 300;
    p1score = p1score + 1;
  }
  
  if (bally > -100) {
    bally = 300;
    p2score = p2score + 1;
  }
  
  //player movement
  if (wKey) player1y -= 7;
  if (sKey) player1y +=7;
  if (aKey) player1x -= 7;
  if (dKey) player1x += 7;
  if (upKey) player2y -= 7;
  if (downKey) player2y += 7;
  if (leftKey) player2x -= 7;
  if (rightKey) player2x += 7;
  
  //bouncing code
  if (bally <= 0) { //top
    vy = vy * -0.9;
    bally = 0;
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
    p1score = p1score + 1;
    ballx = width/2;
  }
  
  if ( dist(player2x, player2y, ballx, bally) <= player2d/2 + balld/2 ) {
    vx = (ballx - player2x)/5; 
    vy = (bally - player2y)/5;
    p1score = p1score + 1;
    ballx = width/2;
    //fail.play();
  }
  
  //if ( dist(width/2, height, ballx, bally) <= 100 + balld/2 ) {
    //p1score = p1score + 1;
    //ballx = width/2;
    //bally = 50;
 // }
    
}

void mouseReleased () {
  //fail.stop();
  //fail.play();
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
