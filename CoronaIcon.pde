/* 
 This is a class created for the corona virus going around on the starting screen (image is free to use: https://pixabay.com/nl/vectors/coronavirus-pictogram-rood-corona-5107804/).
 */

class CoronaIcon {

  float xPos, yPos, xspeed, yspeed, rotation, rotationSpeed;
  PImage coronaIcon;
  int xDirection = 1, yDirection = 1;


  CoronaIcon() {
    coronaIcon = loadImage("data/img/corona.png");
    xPos = random(60, 900);
    yPos = random(150, 600);
    xspeed = random(0.5, 3);
    yspeed = random(0.5, 3);
    rotation = 0;
    rotationSpeed = (xspeed*yspeed/2)/100;
  }

  void display() {
    xPos = xPos + ( xspeed * xDirection );      //this makes the corona icon move around the screen
    yPos = yPos + ( yspeed * yDirection );
    rotation = rotation + rotationSpeed;        //for extra realism the cornona icon also spins around
    if (xPos > width-50 || xPos < 50) {         //this makes the corona icon bounce off the wall and make it rotate like it would in real life
      xDirection *= -1;
      rotationSpeed *= -1;
    }
    if (yPos > height-115 || yPos < 115) {     //this makes the corona icon bounce off the wall and make it rotate like it would in real life
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
