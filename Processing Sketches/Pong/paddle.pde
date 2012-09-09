class Paddle {
  float xPos; 
  float yPos;
  float w;
  float h;
  float ySpeed;

  Paddle(float _xPos, float _yPos, int _w, int _h, int _ySpeed) {
    xPos = _xPos;
    yPos = _yPos;
    w = _w;
    h = _h;
    ySpeed = _ySpeed;
  }
  void displayPaddle() {
    movePaddle();

    rect(xPos, yPos, w, h);
  }
  void movePaddle() {
    if (keyPressed) {
      if (key == 'w') {
        yPos = yPos - ySpeed;
      }
      else if (key == 's') {
        yPos = yPos + ySpeed;
      }
    }
    if (yPos >= (height - h)) {
      yPos = height - h;
    } 
    else {
      ySpeed = ySpeed;
    }
    if (yPos <= 0) {
      yPos = 0;
    } 
    else {
      ySpeed = ySpeed;
    }
  }
}

