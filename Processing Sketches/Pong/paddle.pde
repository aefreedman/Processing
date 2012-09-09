class Paddle {
  float xPos; 
  float yPos;
  float w;
  float h;
  float ySpeed;
  char u, d;

  Paddle(float _xPos, float _yPos, int _w, int _h, int _ySpeed, char _u, char _d) {
    xPos = _xPos;
    yPos = _yPos;
    w = _w;
    h = _h;
    ySpeed = _ySpeed;
    u = _u;
    d = _d;
  }
  void displayPaddle() {
    movePaddle();
    rect(xPos, yPos, w, h);
  }
  void movePaddle() {
    if (keyPressed) {
      if (key == u) {
        yPos = yPos - ySpeed;
      }
      else if (key == d) {
        yPos = yPos + ySpeed;
      }
    }
    if (yPos >= (height - h)) {
      yPos = height - h;
    } 
    else if (yPos <= 0) {
      yPos = 0;
    } 
  }
}

