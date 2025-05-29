void gameoverClicks() {
  mode = INTRO;
  //if (score == 3) {
  //int i = 0;
  // alive[i] = true;
  //}
  //if (life == 0) {
  n = 36;
  int i = 0;
  alive[i] = true;
  // }
  life = 3;
  score = 0;
  ballx = width/2;
  bally = height/2;
}

void gameover() {
  numberOfFrames = 61;
  gif = new PImage[numberOfFrames];

  int a = 0;
  while (a < numberOfFrames) {
    gif[a] = loadImage("frame_"+a+"_delay-0.1s.gif");
    a = a + 1;
  }
  fill(255);
  textSize(100);
  textAlign(CENTER, CENTER);
  text("YOU LOSE", 500, 500);
}

void win() {
  numberOfFrames = 61;
  gif = new PImage[numberOfFrames];

  int a = 0;
  while (a < numberOfFrames) {
    gif[a] = loadImage("frame_"+a+"_delay-0.1s.gif");
    a = a + 1;
  }
  fill(255);
  textSize(100);
  textAlign(CENTER, CENTER);
  text("YOU WIN", 500, 500);
}
