class Ripple {

  //instance variables or fields
  float x, y, size, alpha;
  int h, s, b;

  //constructors
  Ripple() {
    x = random(width);
    y = random(height);
    size = random(200);
    h = int(random(255));
    s = 255;
    b = 255;
    
  }

  //behaviour functions
  void show() {
    alpha = map(size, 0, 200, 255, 0);
    stroke(h, s, b, alpha);
    ellipse(x, y, size, size/2);
  }

  void act() {
    size = size + 3;
    if (size >= 200) {
      x = mouseX;
      y = mouseY;
      size = 0;
    }
  }
}
