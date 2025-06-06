class Spike {
  //Instance variables
  float x, y, w;

  //Constructor
  Spike() {
    x = random(width);
    y = random(height);
    w = random(100, 300);
  }

  void show() {
    stroke(0);
    strokeWeight(2);
    fill(255);
    ellipse(x, y, w, w/2);
  }

  void shrink() {
    if (w > 0) {
      y = y - 4;
      w = w - 2;
    }
  }
}
