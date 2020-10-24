/* 
 This is a class created for the corona virus going around on the starting screen.
 */

class Player {
  
  float y, speed, L, updown, legSpeed;
  color bodyColor;

  boolean [] keys = new boolean[1000000];    //makes an array for 128 possible keys (the maximum)

  Player() {
    rectMode(CENTER);

    x = 210;
    y = 160;
    speed = 1;
    L = 0;
    updown = 1;
    legSpeed = 0.5;

    bodyColor = color(15, 165, 255);
  }


  void display() {
    footstep();
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

  void footstep() {

    if (keys ['a'] || keys ['s'] || keys ['d'] || keys ['w']) {
      L = L + (legSpeed * updown);
      if (L == 5 || L == -5) {
        updown *= -1;
      }
    } else
      L = 0;
  }

  void move1() {

    if (keys ['a'] && x > 15)
      x = x - speed;
    if (keys ['d'] && x <= width)
      x = x + speed;
    if (keys ['w'] && y > 160)
      y = y - speed;
    if (keys ['s'] && y < height-70)
      y = y + speed;
    if (keys [' ']) {
      speed = 2;
    } else {
      speed = 1;
    }
  }

  void move2() {

    if (keys ['a'] && x >= 0)
      x = x - speed;
    if (keys ['d'] && x <= width)
      x = x + speed;
    if (keys ['w'] && y > 160)
      y = y - speed;
    if (keys ['s'] && y <= height)
      y = y + speed;
    if (keys [' ']) {
      speed = 2;
    } else {
      speed = 1;
    }
  }

  void move3() {

    if (keys ['a'] && x >= 0)
      x = x - speed;
    if (keys ['d'] && x <= width - 15)
      x = x + speed;
    if (keys ['w'] && y > 180)
      y = y - speed;
    if (keys ['s'] && y <= height - 70)
      y = y + speed;
    if (keys [' ']) {
      speed = 2;
    } else {
      speed = 1;
    }
  }


  void walkPressed() {
    keys[key] = true;
  }

  void walkReleased() {
    keys[key] = false;
  }
}
