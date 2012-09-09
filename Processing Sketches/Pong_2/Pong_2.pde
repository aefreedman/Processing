//PONG II

Ball balls[] = { 
  new Ball(200, 100, 100), 
  new Ball(50, 50, 100)
  };

PVector vels[] = { 
  new PVector(1.5, 2.7), 
  new PVector(-1.6, -1.2)
  };

void setup() {
    size(640, 360);
    noStroke();
  }

void draw() {
  background(0);
  fill(255);
  noStroke();
  for (int i=0; i < 2; i++) {
    balls[i].x += vels[i].x;
    balls[i].y += vels[i].y;
    ellipse(balls[i].x, balls[i].y, balls[i].r*2, balls[i].r*2);
    checkBoundaryCollision(balls[i], vels[i]);
  }
}

