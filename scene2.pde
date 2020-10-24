/* 
 Scene 2 is an image created in photoshop.
 */

class Scene2 {

  PImage scene2;

  Scene2() {
    scene2 = loadImage("data/img/scene2.png");
  }

  void display() {
    image(scene2, 0, 0, 1000, 750);
  }
}
