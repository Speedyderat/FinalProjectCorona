//Energy Bar

class Energy {

  float energy;
  float drain;
  float charge;

  boolean exhausted;
  boolean [] keys = new boolean[1000000];    //makes an array for more possible keys (the maximum)

  Energy() {
    energy = 197;
    drain = 1.5;
    charge = 0.1;
  }

  void display() {
    drain();
    charge();
    stroke(0);
    strokeWeight(3);

    //iconbox
    fill(180);
    rect(750, 700, 50, 50);

    //energybox
    fill(255);
    rect(875, 700, 200, 50);

    //icon
    pushMatrix();
    translate(750, 700);

    noStroke();
    fill(255, 255, 0);
    triangle(-10, 3, 3, -20, 3, 3);
    triangle(10, -3, -3, 20, -3, -3);
    popMatrix();

    //energy
    rectMode(CORNER);

    pushMatrix();
    translate(777, 677);
    fill(128, 255, 0);
    rect(0, 0, energy, 47);
    popMatrix();

    rectMode(CENTER);
  }

  boolean charge() {
    if (energy <= 197) {          //refills the energybar to max energy
      energy = energy + charge;
    }

    if (energy == 0) {
      exhausted = true;
    }

    if (energy == 50) {
      exhausted = false;
    }
    return exhausted;
  }


  void drain() {
    if (keys [' '] && (keys ['a'] || keys ['s'] || keys ['d'] || keys ['w'])) {
      if (energy >= 0) {
        energy = energy - drain;
      }
    }
  }


  void walkPressed() {
    keys[key] = true;
  }

  void walkReleased() {
    keys[key] = false;
  }
}
