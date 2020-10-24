/* 
 Scene 2,5 created to show the poster in scene 2.
 */

class Scene25 {

  PImage scene2;
  PImage poster;

  Scene25() {
    scene2 = loadImage("data/img/scene2.png");
    poster = loadImage("data/img/poster.png");
  }

  void display() {
    image(scene2, 0, 0, 1000, 750);
    image(poster, width/2-30, 120, 70, 100);
    pushMatrix();
    rectMode(CORNER);
    fill(0,0,0,191);
    rect(0,0,1000,750);
    rectMode(CENTER);
    popMatrix();
    image(poster, 250, 0, 500, 750);
  }
}
