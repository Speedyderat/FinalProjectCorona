/* 
 This inventory is created to store the grocerybag.
 */

class Inventory {

  PImage bag, bagEmpty;
  boolean shopped;

  Inventory() {
    bag = loadImage("data/img/bag.png");
    bagEmpty = loadImage("data/img/bagempty.png");
    shopped = false;
  }

  void display() {
    inventory.housechecker();
    inventory.shopchecker();
    if (shopped) {
      image(bag, 50, 600, 80, 140);
    } else {
      image(bagEmpty, 50, 600, 80, 140);
    }
  }

  void housechecker() {
    if (stage == 2 && shopped == true) {
      if (dist(P1.posX(), P1.posY(), 200, 200) < 25) {
        stage = youwon;
      }
    }
  }

  boolean shopchecker() {
    if (stage == 4) {
      if (dist(P1.posX(), P1.posY(), 425, 250) < 50) {
        shopped = true;
      }
    }
    return shopped;
  }
}
