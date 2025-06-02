void gameoverClicks() {
  mode = INTRO;
  n = 36;
  
  int i = 0;
  while (i < n) {
    alive[i] = true;
    i = i + 1;
  }
  
  life = 3;
  score = 0;
  ballx = width/2;
  bally = height/2;
  px = width/2;
  py = height;
  vx = 15;
  vy = 15;
}

void gameover() {
  if (life == 0) {
    image(gif[f], 0, 0, width, height);
  if (frameCount % 2 == 0) {
    f = f + 1;
  }
  if (f == numberOfFrames) f = 0;
  
    fill(255);
    textSize(120);
    textAlign(CENTER, CENTER);
    text("YOU LOSE", 500, 450);
    textSize(40);
    text("-click to restart-", 500, 700);
  }
}

void win() {
  if (score == 36) {
   image(gif[f], 0, 0, width, height);
  if (frameCount % 2 == 0) {
    f = f + 1;
  }
  if (f == numberOfFrames) f = 0;
  
    fill(255);
    textSize(120);
    textAlign(CENTER, CENTER);
    text("YOU WIN", 500, 450);
    textSize(40);
    text("-click to restart-", 500, 700);
  }
}
