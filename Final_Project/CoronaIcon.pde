

class CoronaIcon {

  float x, y, speed;
  PImage coronaIcon;


  CoronaIcon() {
    coronaIcon = loadImage("img/corona.png");
  }
  
  void display() {
    image(coronaIcon, random(50, 900), random(50, 650), 100, 100);
  }
}
