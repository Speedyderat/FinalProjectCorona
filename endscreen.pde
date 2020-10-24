/* 
 Endscreen is an image created in photoshop.
 */

class Endscreen {

  PImage endscreenbackground;
  PImage endscreengameover;
  PImage endscreenyouwon;

  CoronaIcon icon;
  HandsIcon icon2;

  Endscreen() {
    endscreenbackground = loadImage("data/img/startscreenbackground.png");
    endscreengameover = loadImage("data/img/endscreengameover.png");
    endscreenyouwon = loadImage("data/img/endscreenyouwon.png");

    icon = new CoronaIcon();
    icon2 = new HandsIcon();
  }

  void gameover() {                                    //gameover screen design
    image(endscreenbackground, 0, 0, 1000, 750);
    icon.display();
    image(endscreengameover, 0, 0, 1000, 750);
  }

  void youwon() {                                      //you won screen design
    image(endscreenbackground, 0, 0, 1000, 750);
    icon2.display();
    image(endscreenyouwon, 0, 0, 1000, 750);
  }
}
