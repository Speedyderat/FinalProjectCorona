/* 
 Startscreen is an image created in photoshop.
 */
 
class Endscreen {
  PImage endscreenbackground;
  PImage endscreentext;

  CoronaIcon icon;

  Endscreen() {
    endscreenbackground = loadImage("data/img/startscreenbackground.png");
    endscreentext = loadImage("data/img/startscreentext.png");

    icon = new CoronaIcon();
  }

  void infected() {
    image(endscreenbackground, 0, 0, 1000, 750);
    icon.display();
    image(endscreentext, 0, 0, 1000, 750);
  }
}
