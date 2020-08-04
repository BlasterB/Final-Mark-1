class CellSpawner {

  ArrayList<RedBloodCell> a;
  ArrayList<BlackBloodCell> b;
  int numberofCells;
  int numberofR;

  //AstroidSpawner( int totalAsteroid ) {
  //a = new ArrayList<Astroid>();
  //for ( int i = 0; i < totalAsteroid; i++ ) {
  //addParticle();
  //}
  //println("spawn done:" + a.size());
  //}

  CellSpawner() {
    a = new ArrayList<RedBloodCell>();
    b = new ArrayList<BlackBloodCell>();
  }



  void applyForce(PVector force) {
    for (RedBloodCell p : a) {
      p.applyForce(force);
    }
  }

  void addParticle() {
    float r = random(5);
    if (r < 1) { 
      a.add(new RedBloodCell(new PVector(-10, random(0+height/8+10, height-height/8-10))));
    }
  }


  void run() {
    for (int i = a.size()-1; i >=0; i--) {
      RedBloodCell p = a.get(i);
      p.update();
      p.display();
      if (p.location.x > width /*|| p.location.x > width+50 || p.location.x > 0-50*/) {
        a.remove(i);
      }
    }
  }
  
//  PVector findClosestTarget(){
//   PVector closest = new PVector();
//  float closestDistanceToMouse = width * 4;
//  for (RedBloodCell p : a) {
//    float distanceToMouse = dist(mouseX, mouseY, p.x, p.y);
//    if (distanceToMouse < closestDistanceToMouse) {
//      closestDistanceToMouse = distanceToMouse;
//      closest.x = p.x;
//      closest.y = p.y;
//    }
//  }
//   return closest;
//}


}
