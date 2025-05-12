void game() {
  background(white);
  line(0, 150, 600, 150);
  line(0, 450, 600, 450);

  //player 1
  strokeWeight(5);
  stroke(black);
  fill(blue);
  circle(player1x, player1y, player1d);
  fill(blue);
  textSize(30);
  text(p1score, 100, 50);

  //player 2
  fill(green);
  circle(player2x, player2y, player2d);
  fill(green);
  textSize(30);
  text(p2score, 500, 550);

  //ball
  strokeWeight(3);
  fill(pink);
  circle(ballx, bally, balld);

  //ball2
  fill(purple);
  circle(ball2x, ball2y, balld);

  //block
  fill(255, 0, 0);
  square(blockx, blocky, blockd);
  square(blockx + 200, blocky, blockd);
  square (blockx + 400, blocky, blockd);

  if (blockx >= 600) {
    blockx = -600;
  }


  //ball movement
  //ballx = ballx + vx;
  //bally = bally + vy;
  //ball2x = ball2x + vx2;
  //ball2y = ball2y + vy2;

  //block movement
  //blockx = blockx + bvx;

  //ball score
  if (bally > 700) {
    bally = 300;
    ballx = 300;
    p1score = p1score + 1;
  }

  if (bally < -100) {
    bally = 300;
    ballx = 300;
    p2score = p2score + 1;
  }

  //ball2 score
  if (ball2y > 700) {
    ball2y = 300;
    ball2x = 300;
    p1score = p1score + 2;
  }

  if (ball2y < -100) {
    ball2y = 300;
    ball2x = 300;
    p2score = p2score + 2;
  }

  //if (blocky > 700) {
  //blocky = 300;
  // blockx = 250;
  //p1score = p1score - 1;
  //}

  //player movement
  if (wKey) player1y -= 7;
  if (sKey) player1y +=7;
  if (aKey) player1x -= 7;
  if (dKey) player1x += 7;

  if (upKey) player2y -= 7;
  if (downKey) player2y += 7;
  if (leftKey) player2x -= 7;
  if (rightKey) player2x += 7;

  //player1 boundries
  if (player1y >= 100) {
    player1y = 95;
  }

  if (player1y <= -60) {
    player1y = -55;
  }

  if (player1x >= 660) {
    player1x = 655;
  }

  if (player1x <= -60) {
    player1x = -55;
  }

  //player2 boundries
  if (player2y <= 500) {
    player2y = 505;
  }

  if (player2y >= 660) {
    player2y = 655;
  }

  if (player2x >= 660) {
    player2x = 655;
  }

  if (player2x <= -60) {
    player2x = -55;
  }

  //bouncing code
  if (ballx <= 0) { //right
    vx = vx * -0.9;
    ballx = 0;
  }

  if (ballx >= width) { //left
    vx = vx * -0.9;
    ballx = width;
  }

  if (ball2x <= 0) { //right
    vx = vx * -0.9;
    ball2x = 0;
  }

  if (ball2x >= width) { //left
    vx = vx * -0.9;
    ball2x = width;
  }

//bounce code ball 1
  if ( dist(player1x, player1y, ballx, bally) <= player1d/2 + balld/2 ) {
    vx = (ballx - player1x)/5;
    vy = (bally - player1y)/5;
    ballx = width/2;
  }

  if ( dist(player2x, player2y, ballx, bally) <= player2d/2 + balld/2 ) {
    vx = (ballx - player2x)/5;
    vy = (bally - player2y)/5;
    ballx = width/2;
    //fail.play();
  }
  
//bounce code ball2
  if ( dist(player1x, player1y, ball2x, ball2y) <= player1d/2 + balld/2 ) {
    vx2 = (ball2x - player1x)/5;
    vy2 = (ball2y - player1y)/5;
    ball2x = width/2;
  }

  if ( dist(player2x, player2y, ball2x, ball2y) <= player2d/2 + balld/2 ) {
    vx = (ball2x - player2x)/5;
    vy = (ball2y - player2y)/5;
    ball2x = width/2;
    //fail.play();
  }

//bounce code block 1
if ( dist(player1x, player1y, blockx, blocky) <= player1d/2 + blockd/2 ) {
  vx = (blockx - player1x)/5;
  vy = (blocky - player1y)/5;
  blockx = width/2;
}

//bounce code block 2
if ( dist(player2x, player2y, blockx, blocky) <= player2d/2 + blockd/2 ) {
  vx = (blockx - player2x)/5;
  vy = (blocky - player2y)/5;
  blockx = width/2;
  //fail.play();
}

if ( dist(player1x, player1y, blockx, blocky) <= player1d/2 + blockd/2 ) {
  vx2 = (blockx - player1x)/5;
  vy2 = (blocky - player1y)/5;
  blockx = width/2;
}

if ( dist(player2x, player2y, blockx, blocky) <= player2d/2 + blockd/2 ) {
  vx = (blockx - player2x)/5;
  vy = (blocky - player2y)/5;
  blockx = width/2;
  //fail.play();
}
}

//void gameClicks() {
  //mode = PAUSE;
//}
