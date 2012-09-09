class Ball {
  int r;
  float xPos;
  float yPos; 
  float xSpeed;
  float ySpeed;
  int score;

  Ball() {
  }

  Ball(float _xPos, float _yPos, int _r, int _xSpeed, int _ySpeed) {
    r = _r;
    xPos = _xPos;
    yPos = _yPos;
    xSpeed = _xSpeed;
    ySpeed = _ySpeed;
  }

  void moveBall() {
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
    if (yPos > height-r || yPos < r) { //Bottom & top edge detection
      ySpeed = -ySpeed;
    }
    if (xPos >= width) {  //Scoring 
      xPos = width/2; //Always begins in midfield
      yPos = random(50, (height - r)); //Randomizes starting location
      score = score + 1; //Tracks score
      println("Score: " + score); //Displays Score in console
      xSpeed = -xSpeed; //Increments left_right speed
//      ySpeed = random(-5, 5);  //Increments up_down speed
    } 
    else {
      if(xPos < 0) {
      xPos = width/2; //Always begins in midfield
      yPos = random(50, (height - r)); //Randomizes starting location
      score = score - 1; //Tracks score
      println("Score: " + score); //Displays Score in console
      xSpeed = -xSpeed; //Increments left_right speed
//      ySpeed = random(-5, 5);  //Increments up_down speed
      }
    }
  }

  void displayBall() {
    moveBall();
    ellipseMode(RADIUS);
    rect(xPos, yPos, r, r);
  }
  void update(float xPos, float yPos) {
  }
}

