// global cariables (can be used everywhere below)
int x1;  // tracks horizontal position of first cactus
int x2;  // tracks horizontal position of second cactus

// this function runs only once
void setup() {
  // draw the canvas
  size(800, 200);

  // set the initial position of the cactus
  x1 = 900; // position it off-screen on the right
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops
  background(255);

  // draw a circle at bottom right corner of the screen
  //      x    y    w   h
  ellipse(x1, 175, 50, 50);

  // create the appearance of moving by changing the position
  x1 = x1 - 5;

  // put the cactus back on the right edge if it goes off the left side
  if (x1 < -25) {
    x1 = 900; // place off screen on right
  }
}