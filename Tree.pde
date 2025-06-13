class Tree {

  //instance variables or fields
  float x1, y1, x, y, vx, vy, size;

  //constructor: special function that defines how
  //             a object of this class is born.
  //             Defines initial values for fields.
  Tree() {
    x1 = 0;
    y1 = random(750, 800);
    x = 100;
    y = random(750, 800);
    vx = random(20, 50);
    vy = 0;
    size = vx;
  }

  //behavior functions: these define what a star does
  void show() {
    fill(0);
    while(x1 < 800) 
    line(x1, y1, x, y1);
    x1 = x1 + 1;
  }

  void act() {
    //if (x <= 400) {
       x = x + vx;
    //}
    //if (x >= 400) {
     // x = x - vx;
    //}
  //}
}
