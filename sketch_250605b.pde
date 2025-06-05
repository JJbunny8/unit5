//Jennifer Wu
//June 5, 2025
//2-3

Spike[] spikes;
int n = 50;

void setup () {
  size(800, 800, P2D);
  background(255);

  spikes = new Spike[n]; //constructor

  int i = 0;
  while (i < n) {
    spikes[i] = new Spike();
    i++;
  }
}

void draw () {
  int i = 0;
  while (i < n) {
    spikes[i].show();
    spikes[i].shrink();
    i++;
  }
}
