//Final Project - Public Service Announcement
/*  Made by: 
 Jasper Bosschart (sXXXXXXX)
 Stefan Kooy      (s2614588)  */

int stage;
int npccount = 8;
Startscreen startscreen;
scene1 scene1;
scene2 scene2;
scene3 scene3;
Player P1;
Energy E;
NPC [] npcs = new NPC[npccount];


void setup() {
  size(1000, 750);

  startscreen = new Startscreen();
  scene1 = new scene1();
  scene2 = new scene2();
  scene3 = new scene3();
  P1 = new Player();
  E = new Energy();

  for (int i=0; i<npccount; i++) {
    npcs[i] = new NPC();

    stage = 1;
  }
}


void draw() {

  //First Stage - Startscreen
  if (stage == 1) {
    startscreen.display();
    if (keyPressed) {
      stage = stage + 1;
    }
  } 

  //Second Stage - The Game
  if (stage == 2) {  
    scene1.display();

    //NPC
    for (int i=0; i<npccount; i++) {
      npcs[i].display();
    }

    //Player
    P1.display();
    P1.move1();

    //Energy
    E.display();

    if (x >= width - 1) {
      stage = stage + 1;
      x = 3;
    }
  }

  if (stage == 3) {
    scene2.display();

    //NPC
    for (int i=0; i<npccount; i++) {
      npcs[i].display();
    }

    //Player
    P1.display();
    P1.move2();

    //Energy
    E.display();

    if (x <= 1) {
      stage = stage - 1;
      x = width - 3;
    }

    if (x > width - 1) {
      stage = stage + 1;
      x = 3;
    }
  }

  if (stage == 4) {
    scene3.display();

    //NPC
    for (int i=0; i<npccount; i++) {
      npcs[i].display();
    }

    //Player
    P1.display();
    P1.move3();

    //Energy
    E.display();

    if (x <= 1) {
      stage = stage - 1;
      x = width - 3;
    }
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
