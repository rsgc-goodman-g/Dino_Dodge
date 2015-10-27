class Dino {
  // global varialbels for the dino
  float dinoY;     // tracks position of dino
  float dinoS;     // tracks speed of dino
  float dinoA;     // tracks acceleration of the dino

  // constucter (like setup - runs once)
  Dino(float Y_, float S_, float A_) {
    dinoY = Y_;
    dinoS = S_;
    dinoA = A_;
  }
} // End of Class