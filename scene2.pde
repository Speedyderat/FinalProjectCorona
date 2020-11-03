/* 
 Scene 2 is an image created in photoshop.
 */

class Scene2 {

  PImage scene2;
  PImage poster;
  boolean posterclicked;

  Scene2() {
    scene2 = loadImage("data/img/scene2.png");
    poster = loadImage("data/img/poster.png");
  }

  void display() {
    image(scene2, 0, 0, 1000, 750);
    image(poster, width/2-30, 120, 70, 100);
  }

  void posterClick(int pointerX, int pointerY) {                                            //if the mouse is clicked on the poster then posterclicked will be true and the scene will switch from 2 to 2.5
    if (stage == 3) {
      if (pointerX>width/2-30 && pointerX<width/2+40 && pointerY>120 && pointerY<220) {
        posterclicked = true;
      } else {
        posterclicked = false;
      }
    }
  }

  void posteRelease() {
    if (stage == 3) {
      posterclicked = false;
    }
  }

  boolean posterClickres() {
    return posterclicked;
  }
}
