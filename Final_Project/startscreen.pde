//start screen is an image created in photoshop.
//it is loaded with the right dimensions 

class startscreen {
  PImage startscreenbackground;
  PImage startscreentext;
  
  CoronaIcon icon;

  startscreen() {
    startscreenbackground = loadImage("img/startscreenbackground.png");
    startscreentext = loadImage("img/startscreentext.png");
    
    icon = new CoronaIcon();
  }

  void display() {
    image(startscreenbackground, 0, 0, 1000, 750);
    icon.display();
    image(startscreentext, 0, 0, 1000, 750);
  }
}
