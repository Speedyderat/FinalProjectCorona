/* 
 Scene 1 is an image created in photoshop.
 */

class Scene1 {
  
  PImage scene1;

  Scene1() {
    scene1 = loadImage("data/img/scene1.png");
  }

  void display() {
    image(scene1, 0, 0, 1000, 750);
  }
}
