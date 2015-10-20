// global variables (can be used everywhere below)
Cactus c1;
Cactus c2;

float dinoY;     // tracks position of dino
float dinoS;     // tracks speed of dino
float dinoA;     // tracks acceleration of the dino

float gravity;   // gravity
float distance;  // track the distance between the dino and a cactus

// this function runs once only
void setup() {
  // draw the canvas
  size(800, 200);
  
  c1 = new Cactus(900, -0.1, -1, 50);
  c2 = new Cactus(900, -0.2, -1, 25);
  
  
  // set dino initial vertical position
  dinoY = 170;
  
  // set dino's initial speed
  dinoS = 0;
  
  // set dino's initial acceleration
  dinoA = 0;
  
  // set gravity
  gravity = 0.02;
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops
  background(255);
  
  c1.update(gravity);
  c2.update(gravity);

  // Change dino's acceleration based on gravity
  dinoA = dinoA + gravity;

  // Change dino's speed based on acceleration
  dinoS = dinoS + dinoA;
  
  // Change dino's location based on speed
  dinoY = dinoY + dinoS;
  
  if (dinoY > 170) {
    dinoA = 0;
    dinoS = 0;
    dinoY = 170;
  }

  // draw the dino
  ellipse(50, dinoY, 60, 60);
  
  // status updates
  fill(0);
  textSize(12);
  text("dinoY is " + dinoY, 150, 25);
  text("dinoS is " + dinoS, 150, 50);
  text("dinoA is " + dinoA, 150, 75);
  text("distance is " + distance, 150, 100);
  
  //// determine the distance between the objects
  ////        dino - cactus
  //float a = dinoY - 175;
  //float b = 50- x1;
  //distance = sqrt( pow(a, 2) + pow(b, 2) );
  
  //// determine whether there is a hit
  //if (distance < (30 + 25) ) {
  //  textSize(80);
  //  text("GAME OVER", 275, 100);
    
  //  noLoop();
  //}
  
}

// respond to keypress 
void keyPressed() {
  
  // Make dino move "up" on the screen
  // (negative acceleration is required, given direction of Y axis
  //  in Processing's co-ordinate system)
  dinoA = -0.55; 
}