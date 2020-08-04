class CellWalls {
  PVector location;
  PVector location2;
  int NumOfBlackCells;

  CellWalls(PVector t) {
    location = t.copy();
    //NumOfBlackCells = 200;
  }

  void display() {
    fill(200-NumOfBlackCells, 0, 0);
    noStroke();
    rect(location.x, location.y, width, height/8);
    rect(location.x, location.y+height-height/8, width, height/8);
  }
}
