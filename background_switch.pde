class Backgroundchanger {

  PImage img;

  Backgroundchanger () {
    img = loadImage("scene1.png");
  }

  void display () {
    image(img, 0, 0);
  }
}
