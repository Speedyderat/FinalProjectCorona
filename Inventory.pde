/* 
 This inventory is created to store the grocerybag.
 */

class Inventory {

  PImage bag, bagEmpty;
  boolean shopped;

  Inventory() {
    bag = loadImage("data/img/bag.png");
    bagEmpty = loadImage("data/img/bagempty.png");
  }

  void display() {
    if (shopped) {
      image(bag, 50, 600, 80, 140);
    } else {
      image(bagEmpty, 50, 600, 80, 140);
    }
  }
  
//  boolean shopchecker() {
//  if(stage == 3) {
//  if (player.posY) {
//  }
//  return shopped;
//}
}
