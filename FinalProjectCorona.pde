/* 
 Final Project - Public Service Announcement
 Made by: 
 Jasper Bosschart (s2562685)
 Stefan Kooy      (s2614588)  
 */

int stage;
int npccount = 5;
int gameover;
float x;                                     // this X is actually the x of the player but is defined here to make the switching from scenes possible
Startscreen startscreen;
Endscreen endscreen;
Scene1 scene1;
Scene2 scene2;
Scene3 scene3;
Player P1;
Energy E;
NPC [] npcs1 = new NPC[npccount];            // every scene has his own array, so the NPC's spawn differently in every scene
NPC [] npcs2 = new NPC[npccount];
NPC [] npcs3 = new NPC[npccount];


void setup() {
  size(1000, 750);

  startscreen = new Startscreen();
  scene1 = new Scene1();
  scene2 = new Scene2();
  scene3 = new Scene3();
  P1 = new Player();
  E = new Energy();

  for (int i=0; i<npccount; i++) {
    npcs1[i] = new NPC();
  }
  for (int i=0; i<npccount; i++) {
    npcs2[i] = new NPC();
  }
  for (int i=0; i<npccount; i++) {
    npcs3[i] = new NPC();
  }


  stage = 1;
  gameover = 13;
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
      npcs1[i].display();
      npcs1[i].infectedBy();
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
      npcs2[i].display();
      npcs2[i].infectedBy();
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
      npcs3[i].display();
      npcs3[i].infectedBy();
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
  
  //Third Stage - Endscreen
  if (stage == gameover) {
    endscreen.gameover();
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
