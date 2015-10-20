class Cactus {
  // global variables for the cactus
  float x1;    // tracks horizontal position of first cactus
  float s1;    // speed for first cactus
  float a1;    // acceleration for first cactus
  float h;    // height of the cactus

  // constucter (like setup - runs once)
  Cactus(float x_, float a_, float s_, float h_) {
    x1 = x_;
    s1 = s_;
    a1 = a_;
    h = h_;
  }

  // update: draws things related to cactus
  void update (float gravity) {
    // make the cactus move
    // draw a circle at bottom right corner of the screen
    //       x    y    w   h
    ellipse(x1, 175, h, h);

    // change the speed
    s1 = s1 + a1;

    // create the appearance of moving by changing the x position
    x1 = x1 + s1;

    // put the cactus back on the right edge if it goes off the left edge
    if (x1 < -25) {
      x1 = 900; // place off screen on right 
      s1 = -1;  // reset the speed (to avoid insanely fast movement)
    }
  }
  
} // end of class