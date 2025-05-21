void gameClicks() {
}

void game() {
  background(white);

  //player------------------------------------------------------
  strokeWeight(5);
  stroke(black);
  fill(pink);
  circle(px, py, pd);

  //player movement
  if (leftKey) px -= 10;
  if (rightKey) px += 10;

  //player bounce code
  if ( dist(px, py, ballx, bally) <= pd/2 + balld/2 ) {
    vx = (ballx - px)/5;
    vy = (bally - py)/5;
    ballx = width/2;
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

  if (bally > 1025) {
    ballx = width/2;
    bally = height/2;
  }
  
  fill(0);
  textSize(40);
  text(score, 50, 970);
  
  //if (bally > 700) {
    //bally = 300;
    //ballx = 300;
    //p1score = p1score + 1;
  //}
  
  // bricks----------------------------------------------------
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      manageBrick(i);
    }
    i = i + 1;
  }
}

void manageBrick (int i) {
  if (y[i] == 100) fill(purple);
  if (y[i] == 200) fill(blue);
  if (y[i] == 300) fill(green);
  if (y[i] == 400) fill(yellow);
  circle(x[i], y[i], brickd);
  if ( dist(ballx, bally, x[i], y[i]) <= balld/2 + brickd/2 ) {
    vx = (ballx - x[i])/10;
    vy = (bally - y[i])/10;
    alive[i] = false;
  }
}
