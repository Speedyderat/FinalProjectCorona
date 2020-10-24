/* 
 This is a class created for the clean hands icon going around on the endscreen (image was free to use).
 */

class HandsIcon {

  float xPos, yPos, xspeed, yspeed, rotation, rotationSpeed;
  PImage handsIcon;
  int xDirection = 1, yDirection = 1;


  HandsIcon() {
    handsIcon = loadImage("data/img/hands.png");
    xPos = random(60, 900);
    yPos = random(150, 600);
    xspeed = random(0.5, 3);
    yspeed = random(0.5, 3);
    rotation = 0;
    rotationSpeed = (xspeed*yspeed/2)/100;
  }

  void display() {
    xPos = xPos + ( xspeed * xDirection );
    yPos = yPos + ( yspeed * yDirection );
    rotation = rotation + rotationSpeed;
    if (xPos > width-50 || xPos < 50) {
      xDirection *= -1;
      rotationSpeed *= -1;
    }
    if (yPos > height-115 || yPos < 115) {
      yDirection *= -1;
      rotationSpeed *= 1.01;
    }
    pushMatrix();
    imageMode(CENTER);
    translate(xPos, yPos);
    rotate(rotation);
    image(handsIcon, 0, 0, 100, 100);
    imageMode(CORNER);
    popMatrix();
  }
}
