void intro() {
  background (green);
  textSize(100);
  text("Pong", 200, 200);
  textSize(50);
  text("Round 1", 230, 330);
}

//void introClicks() {
  //mode = GAME;
//}

//if (pscore1 == 30) {
  // mode = mode +1;
//}

void mouseReleased () {
 mode = mode +1;
}
