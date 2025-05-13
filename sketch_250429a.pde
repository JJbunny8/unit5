//import processing.sound.*;

//Jennifer Wu
//April 29, 2025
//2-3

// mode varibles
int mode;
                                                 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//Colour Pallette
color white = #ffffff;
color black = #000000;
color pink =  #FDD4DE;
color blue =  #bde0fe;
color green = #b9fbc0;
color yellow = #fbf8cc;
color purple = #cfbaf0;

// Player variables
float player1x, player1y, player1d;
float player2x, player2y, player2d;

//Ball variables
float ballx, bally, balld;
float vx, vy;
float ball2x, ball2y, ball2d;
float vx2, vy2;

//block variables
float blockx, blocky, blockd;
float bvx, bvy;

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
  player1d = 120;

  player2x = width/2;
  player2y = height;
  player2d = 120;

  //ball setup
  ballx = width/2;
  bally = 300;
  balld = 70;

  vx = 3;
  vy = 3;

  ball2x = width/2;
  ball2y = height/2;
  ball2d = 70;

  vx2 = -3;
  vy2 = -3;


  //music. loop();
  //music.amp(0.2);
  //music. pan();
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else if (p2score == 10) {
    round2();
  } else {
    println ("Error, mode is " + mode);
  }
}
//void mouseReleased () {
 //mode = mode +1;
//fail.stop();
//fail.play();
//}
