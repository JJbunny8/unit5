class Sled {

  //instance variables or fields
  float x, y, vx, vy, size;
  int h, s, b;

  //constructor
  Sled() {
    x = random(-350, 350);
    y = random(450, 750);
    vx = random(2,6);
    vy = y/435;
    size = vy*42;
  }

  //behavior functions
  void show() {
    fill(230);
    circle(x, y-10, 20);
    circle(x, y-25, 15);
    fill(0);
    circle(x+2, y-27, 2);
    rect(x, y-37, 7, 10);
    rect(x, y-34, 10, 3);
    rect(x+10, y-27, 4, 2);
    rect(x, y, size, 7);
  }
  
  void act() {
    x = x + vx;
    y = y + vy;
    if (x > 900 && y > 900 ) {
      x = -100;
      y = random(450, 750);
    }
  }
}
