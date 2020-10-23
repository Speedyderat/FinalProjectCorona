

class NPC {
  
  float x;
  float y;
  float speed;
  color bodyColor;
  
  NPC() {
    rectMode(CENTER);

    x = random(160, 950);
    y = random(50, 700);
    speed = 1;

    bodyColor = color(255, 255, 0);
  }


  void display() {
    noStroke();
    fill(bodyColor);

    //NPC

    //body
    rect(x, y, 30, 50);

    //head
    ellipse(x, y-42, 30, 30);

    //left arm
    arc(x-16, y-16, 16, 16, PI, PI+HALF_PI);
    rect(x-20, y-4, 8, 30);
    arc(x-20, y+11, 8, 10, 0, PI);

    //right arm
    arc(x+16, y-16, 16, 16, PI+HALF_PI, TWO_PI);
    rect(x+20, y-4, 8, 30);
    arc(x+20, y+11, 8, 10, 0, PI);

    //left leg
    arc(x-10, y+35, 10, 10, PI, 2*PI);
    rect(x-10, y+40, 10, 30);
    arc(x-10, y+55, 10, 10, 0, PI);

    //right leg
    arc(x+10, y+35, 10, 10, PI, 2*PI);
    rect(x+10, y+40, 10, 30);
    arc(x+10, y+55, 10, 10, 0, PI);
  }
}
