/* 
 Final Project - Public Service Announcement
 Made by: 
 Jasper Bosschart (s2562685)
 Stefan Kooy      (s2614588)  
 */

int stage, gameover, youwon;
int npccount = 5;
Startscreen startscreen;
Endscreen endscreen;
Scene1 scene1;
Scene2 scene2;
Scene25 scene25;
Scene3 scene3;
Player P1;
Energy E;
Inventory inventory;
NPC [] npcs1 = new NPC[npccount];            // every scene has his own array, so the NPC's spawn differently in every scene
NPC [] npcs2 = new NPC[npccount];
NPC [] npcs3 = new NPC[npccount];
boolean [] keys = new boolean[65536];    //makes an array for more possible keys at the same time


void setup() {
  size(1000, 750);

  startscreen = new Startscreen();
  scene1 = new Scene1();
  scene2 = new Scene2();
  scene25 = new Scene25();
  scene3 = new Scene3();
  inventory = new Inventory();
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
  youwon = 100;
}


void draw() {

  //First Stage - Startscreen
  if (stage == 1) {
    startscreen.display();
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
    P1.move();

    //Energy
    E.display();

    //Inventory
    inventory.display();

    if (P1.x >= width - 1) {
      stage = stage + 1;
      P1.x = 3;
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
    P1.move();

    //Energy
    E.display();

    //Inventory
    inventory.display();

    if (scene2.posterClickres()) {        //poster displays in full size in stage 25
      stage = 25;
    }

    if (P1.x <= 1) {
      stage = stage - 1;
      P1.x = width - 3;
    }

    if (P1.x > width - 1) {
      stage = stage + 1;
      P1.x = 3;
    }
  }

  //Poster scene  
  if (stage == 25) {
    scene25.display();

    if (mousePressed) {
      stage = 3;
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
    P1.move();

    //Energy
    E.display();

    //Inventory
    inventory.display();

    if (P1.x <= 1) {
      stage = stage - 1;
      P1.x = width - 3;
    }
  }

  //Final Stage - Endscreen
  if (stage == gameover) {
    endscreen.gameover();
  }

  if (stage == youwon) {
    endscreen.youwon();
  }
}

void keyPressed() {
  P1.walkPressed(key);
  E.walkPressed(key);
  if (stage == 1) {
    stage = stage + 1;
  }
}

void keyReleased() {
  P1.walkReleased(key);
  E.walkReleased(key);
}

void mouseClicked() {
  scene2.posterClick(mouseX, mouseY);


  if (stage == gameover || stage == youwon) {
    link("https://www.rivm.nl/en/novel-coronavirus-covid-19");
    exit();
  }
}

void mouseReleased() {
  scene2.posteRelease();
}
