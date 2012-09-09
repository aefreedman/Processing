class Shape {
  float x, y, xSpeed, ySpeed, size;
  color c;


  Shape(float _x, float _y, color _c, float _xSpeed, float _ySpeed) {
    x = _x;
    y = _y;
    c = _c;
    xSpeed = _xSpeed;
    ySpeed = _ySpeed;
  }

  void draw() {
    fill(c);
    move();
//    detectObjectCollision();
  }

  void move() {
    x = x + xSpeed;
    y = y + ySpeed;
    
    // Collision detection for edges
    if (x < 0 || x > width) {
      xSpeed = -xSpeed;
    }
    if (y < 0  || y > height) {
      ySpeed = -ySpeed;
    }
  }

  // Collision function for colliding with other objects
  void detectObjectCollision() {
    if (dist(x, y, mouseX, mouseY) < 50) {
      x = x + 10;
      y = y + 10;
      xSpeed = -xSpeed;
      ySpeed = -ySpeed;
    }
  }
}

