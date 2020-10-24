//Scene 2 is an image created in photoshop.

class scene2 {
  PImage scene2;

  scene2() {
    scene2 = loadImage("img/scene2.png");
  }

  void display() {
    image(scene2, 0, 0, 1000, 750);
  }
}
