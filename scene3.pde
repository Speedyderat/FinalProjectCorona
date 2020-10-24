/* 
 Scene 3 is an image created in photoshop.
 */

class Scene3 {

  PImage scene3;

  Scene3() {
    scene3 = loadImage("data/img/scene3.png");
  }

  void display() {
    image(scene3, 0, 0, 1000, 750);
  }
}
