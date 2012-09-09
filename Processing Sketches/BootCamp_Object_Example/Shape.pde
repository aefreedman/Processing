class Shape {

  float x;
  float y;
  color c;
  float xSpeed;
  float ySpeed;

  Shape(float _x, float _y, color _c, float _xSpeed, float _ySpeed) {
    x = _x;
    y = _y;
    c = _c;
    xSpeed = _xSpeed;
    ySpeed = _ySpeed;
  }
  
  void move() {
    x = x + xSpeed;
    y = y + ySpeed;
    if (x < 0 || x > width) {
      xSpeed = -xSpeed;
    }
    if (y < 0 || y > height) {
      ySpeed = -ySpeed;
    }
  }
  
  void draw() {
    move();
    fill(c);
  }
}

