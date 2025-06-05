class Spike {
  //instance variables or fields
  float x, y, x;
  
}

  Star() {
    x = random(0, width);
    y = random(0, height);
    vx = 0;
    vy = random(1, 5);
    size = vy;
    h = int(random(0,255));
    s = 255;
    b = 255;
  }

  //behavior functions: these define what a star does
  void show() {
    fill(h, s, b);
    square(x, y, size);
  }

  void act() {
    y = y + vy;
    if (y > height+size) {
      y = -size;
    }
  }
}
