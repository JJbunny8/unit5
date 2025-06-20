class Snow {

  //instance variables or fields
  float x, y, vx, vy, size;

  //constructor  
  Snow() {
    x = random(0, width);
    y = random(0, height);
    vx = 0;
    vy = random(1, 5);
    size = vy;
  }

  //behavior functions: these define what a star does
  void show() {
    fill(offwhite);
    circle(x, y, size);
  }

  void act() {
    y = y + vy;
    if (y > height+size) {
      y = -size;
    }
  }
}
