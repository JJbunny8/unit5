class Pixel {

  int x, y, size;
  color c;

  Pixel() {
    x = (int) random(width);
    y = (int) random(height);
    c = get(x, y);
    size = 0;
  }

  void show () {
    noStroke();
    fill(c);
    square(x, y, size);
  }

  void act() {
    size = (int) dist(mouseX, mouseY, x, y)/10;
  }
}
