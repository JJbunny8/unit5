class Moon {

  //instance variables or fields
  float x, y, size, alpha;
  int h, s, b;

  //constructors
  Moon() {
    x = width/2;
    y = height/2;
    size = random(1000);
  }

  //behaviour functions
  void show() {
    alpha = map(size, 0, 1000, 255, 0);
    stroke(255, alpha);
    circle(x, y, size);
  }

  void act() {
    size = size + 2;
    if (size >= 1000) {
      x = width/2;
      y = height/2;
      size = 200;
    }
  }
}
