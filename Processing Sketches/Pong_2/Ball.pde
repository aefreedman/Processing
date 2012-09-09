class Ball {
  float x, y, r, m;

  // default constructor
  Ball() {
  }

  Ball(float x, float y, float r) {
    this.x = x;
    this.y = y;
    this.r = r;
    m = r*.1;
  }

  void checkObjectCollision(Ball[] b, PVector[] v) {
    x = x
    // get distances between the balls components
    PVector bVect = new PVector();
    bVect.x = b[1].x - b[0].x;
    bVect.y = b[1].y - b[0].y;

    if (bVect.x < 50) {
      Ball.x = width/2;
      ball[1].y = width/2;
    }
  }
}

