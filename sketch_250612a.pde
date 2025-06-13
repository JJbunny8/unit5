Tree[] trees;
int numtrees;

void setup () {
  size(800, 800, P2D);
  rectMode(CENTER);
  colorMode(HSB);
  noStroke();

  numtrees = 200;
  trees = new Tree[numtrees]; //constructor

  int i = 0;
  while (i < numtrees) {
    trees[i] = new Tree();
    i++;
  }
}

void draw () {
  fill(255);
  rect(width/2, height/2, width, height);
  int i = 0;
  while (i < numtrees) {
    trees[i].show();
    trees[i].act();
    i++;
  }
 
}
