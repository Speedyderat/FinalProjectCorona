

class CoronaIcon {

  float x, y, speed, xPos, yPos;
  PImage coronaIcon;


  CoronaIcon() {
    coronaIcon = loadImage("img/corona.png");
    xPos = random(50, 900);
    yPos = random(50, 650);
  }
  
  void display() {
    image(coronaIcon, xPos, yPos, 100, 100);
  }
}
