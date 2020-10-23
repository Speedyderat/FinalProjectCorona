//Player
  float x;

class Player {

  
  float y;
  float speed;
  color bodyColor;

  boolean [] keys = new boolean[1000000];    //makes an array for 128 possible keys (the maximum)

  Player() {
    rectMode(CENTER);

    x = width/2;
    y = height/2;
    speed = 1;

    bodyColor = color(15, 165, 255);
  }


  void display() {
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
    arc(x-10, y+35, 10, 10, PI, 2*PI);
    rect(x-10, y+40, 10, 30);
    arc(x-10, y+55, 10, 10, 0, PI);

    //right leg
    arc(x+10, y+35, 10, 10, PI, 2*PI);
    rect(x+10, y+40, 10, 30);
    arc(x+10, y+55, 10, 10, 0, PI);
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
    if (keys [' ']){
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
    if (keys [' ']){
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
