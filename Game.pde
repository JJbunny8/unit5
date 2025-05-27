void gameClicks() {
  mode = PAUSE;
}

void game() {
  background(darkblue);

  //paddle------------------------------------------------------
  strokeWeight(5);
  stroke(black);
  fill(255);
  circle(px, py, pd);

  //paddle movement
  if (leftKey) px -= 20;
  if (rightKey) px += 20;

  //paddle boundries
  if (px > 940) {
    px = 939;
  }

  if (px < 60) {
    px = 61;
  }

  //paddle bounce code
  if ( dist(px, py, ballx, bally) <= pd/2 + balld/2 ) {
    vx = (ballx - px)/5;
    vy = (bally - py)/5;
  }

  //ball---------------------------------------------------------
  strokeWeight(3);
  fill(255);
  circle(ballx, bally, balld);

  //ball movement
  ballx = ballx + vx;
  bally = bally + vy;

  //ball bouncing code
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

  //score & lives------------------------------------------------------------
  fill(255);
  textSize(40);
  text(life, 50, 970);

  text(score, 950, 970);

  if (bally > 1025) {
    life = life - 1;
    ballx = width/2;
    bally = height/2;
  }

  if (life == 0) {
    mode = GAMEOVER;
  }

  if (score == 3) {
    mode = GAMEOVER;
  }
//}

  // bricks----------------------------------------------------
//void reset (int i) {
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      manageBrick(i);
    }
    i = i + 1;
  } 
}

void manageBrick (int i) {
  if (y[i] == 100) fill(pink);
  if (y[i] == 200) fill(purple);
  if (y[i] == 300) fill(blue);
  if (y[i] == 400) fill(teal);
  circle(x[i], y[i], brickd);

  if ( dist(ballx, bally, x[i], y[i]) <= balld/2 + brickd/2 ) {
    vx = (ballx - x[i])/3;
    vy = (bally - y[i])/3;
    alive[i] = false;
    score = score + 1;
  }
}
