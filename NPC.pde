/* 
 This is a class creates NPCs.
 */
   
class NPC {

  float x, y, speed, L, updown, legSpeed, directionX, directionY;
  color bodyColor;

  NPC() {
    rectMode(CENTER);

    x = random(30, 980);
    y = random(160, 730);
    speed = random(0.75, 1);
    L = 0;
    updown = 1;
    legSpeed = 0.35;
    directionX = random(1)>0.5?-1:1;
    directionY = random(1)>0.5?-1:1;

    bodyColor = color(255, 255, 0);
  }


  void display() {
    walking();
    noStroke();
    fill(bodyColor);

    //player

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
    arc(x-10, y+(35 + L), 10, 10, PI, 2*PI);
    rect(x-10, y+(35 + L), 10, 40);
    arc(x-10, y+(55 + L), 10, 10, 0, PI);

    //right leg
    arc(x+10, y+(35 - L), 10, 10, PI, 2*PI);
    rect(x+10, y+(35 - L), 10, 40);
    arc(x+10, y+(55 - L), 10, 10, 0, PI);
  }

  void walking() {

    x = x + (speed * directionX);
    y = y + (speed * directionY);
    if (x > width - 20 || x < 20) {
      directionX *= -1;
    }
    if (y > height - 60 || y < 180) {
      directionY *= -1;
    }

    L = L + (legSpeed * updown);
    if (L >= 5 || L <= -5) {
      updown *= -1;
    }
  }
}
