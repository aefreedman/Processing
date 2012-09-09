float xPos;
float yPos;
float hVal;
float wVal;
float xC;
float yC;
float r;
float xSpeed;
float ySpeed;

void setup() {
  size(1280, 720);
  xPos = random(width/4, 3*(width/4));
  yPos = random(height/4, 3*(width/4));
  hVal = random(40, 200);
  wVal = random(40, 200);
  xC = random(0, width);
  yC = random(0, height);
  r = random(20, 50);
  xSpeed = 1;
  ySpeed = 1;
}

void draw() {
  background(255);
  fill(255, 0, 231);
  

  if (mouseX > xPos && mouseY > yPos && mouseX < (xPos + wVal) && mouseY < (yPos + hVal)) {
    fill(255);
    xPos = random(width/4, 3*(width/4)) + xSpeed;
    yPos = random(height/4, 3*(height/4)) + ySpeed;
    hVal = random(40, 200);
    wVal = random(40, 200);
  }
  if (dist(xC, yC, mouseX, mouseY) <= r) {
    fill(0, 255, 0);
    xC = random(0, width);
    yC = random(0, height);
    r = random(20, 50);
  }
  rect(xPos, yPos, wVal, hVal);
  xPos = xPos + xSpeed;
  yPos = yPos + ySpeed;
  ellipse(xC, yC, r * 2, r * 2);
}

