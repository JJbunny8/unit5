void introClicks() {
  mode = GAME;
}

void intro() {
  image(gif[f], 0, 0, width, height);
  if (frameCount % 2 == 0) {
    f = f + 1;
  }
  if (f == numberOfFrames) f = 0;
  textFont(crash);
  textAlign(CENTER, CENTER);
  textSize(120);
  text("BREAKOUT", 500, 500);
}
