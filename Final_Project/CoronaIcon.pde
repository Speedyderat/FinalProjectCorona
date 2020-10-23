

class CoronaIcon {

  float xPos, yPos, xspeed, yspeed, rotation, rotationSpeed;
  PImage coronaIcon;
  int xDirection = 1, yDirection = 1;


  CoronaIcon() {
    coronaIcon = loadImage("img/corona.png");
    xPos = random(50, 900);
    yPos = random(50, 650);
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
    image(coronaIcon, 0, 0, 100, 100);
    imageMode(CORNER);
    popMatrix();
  }
}
