CellWalls walls;
CellSpawner cs;
ArrayList<BlackBloodCell> b;
ArrayList<RedBloodCell> rbcPopulation;

void setup() {
  walls = new CellWalls(new PVector(0, 0));
  //rbc = new RedBloodCell(new PVector(width/2,height/2));
  cs = new CellSpawner();
  //fullScreen();
  size(1500,800);
  b = new ArrayList<BlackBloodCell>();
  rbcPopulation = new ArrayList<RedBloodCell>();
}

void mousePressed() {
  b.add(new BlackBloodCell(new PVector(mouseX, mouseY)));
}

void draw() {
  background(255, 200, 200);
  walls.display();
  cs.addParticle();
  cs.run();
  for (BlackBloodCell bbc : b) {
    bbc.run();
    //bbc.seek(new PVector(mouseX,mouseY));
  }
}
