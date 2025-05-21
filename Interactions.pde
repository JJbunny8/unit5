void keyPressed() {
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == RIGHT) rightKey = true;
}

void keyReleased () {
 if (keyCode == LEFT) leftKey = false;
 if(keyCode== RIGHT) rightKey = false;
}

void mouseReleased() {
 if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else {
    println ("Error, mode is " + mode);
  } 
  
}
