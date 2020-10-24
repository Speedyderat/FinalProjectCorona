//Startscreen is an image created in photoshop.

class Startscreen {
  PImage startscreenbackground;
  PImage startscreentext;

  CoronaIcon icon;

  Startscreen() {
    startscreenbackground = loadImage("img/startscreenbackground.png");
    startscreentext = loadImage("img/startscreentext.png");

    icon = new CoronaIcon();
  }

  void display() {
    image(startscreenbackground, 0, 0, 1000, 750);
    icon.display();
    image(startscreentext, 0, 0, 1000, 750);
  }
}
