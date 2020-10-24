/* 
 Startscreen is an image created in photoshop.
 */

class Endscreen {

  PImage endscreenbackground;
  PImage endscreengameover;

  CoronaIcon icon;

  Endscreen() {
    endscreenbackground = loadImage("data/img/startscreenbackground.png");
    endscreengameover = loadImage("data/img/endscreengameover.png");

    icon = new CoronaIcon();
  }

  void gameover() {
    image(endscreenbackground, 0, 0, 1000, 750);
    icon.display();
    image(endscreengameover, 0, 0, 1000, 750);
  }

  void youwon() {
    image(endscreenbackground, 0, 0, 1000, 750);
    icon.display();
    image(endscreengameover, 0, 0, 1000, 750);
  }
}
