//Final Project - Public Service Announcement
/*  Made by: 
 Jasper Bosschart (sXXXXXXX)
 Stefan Kooy      (s2614588)  */

startscreen startscreen;
scene1 scene1;
Player P1;
Energy E;

int stage;


void setup() {
  size(1000, 750);

  startscreen = new startscreen();
  scene1 = new scene1();
  P1 = new Player();
  E = new Energy();

  stage = 1;
}


void draw() {

  //First Stage - Startscreen
  if (stage == 1) {
    startscreen.display();
    if (keyPressed) {
      stage = stage +1;
    }
  } 

  //Second Stage - The Game
  if (stage == 2) {  
    scene1.display();

    //Player
    P1.display(E.charge());

    //Energy
    E.display();
  }
}


void keyPressed() {
  P1.walkPressed();
  E.walkPressed();
}

void keyReleased() {
  P1.walkReleased();
  E.walkReleased();
}
