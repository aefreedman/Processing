boolean notSelf;
Shape shapeArray[];

void setup() { 
  size(500, 500);

  boolean notSelf;

  shapeArray = new Shape[2];

  for (int i = 0; i < shapeArray.length; i++) {
    if (i < shapeArray.length/2) {
      shapeArray[i] = new Circle(width/2, height/2, 20, color(random(255), random(255), random(255)));
    } 
    else {
      shapeArray[i] = new Square(random(width), random(height), 10, color(random(255), random(255), random(255)), 5, 5);
    }
  }
}

void draw() {
  background(0);

  for (int i = 0; i < shapeArray.length; i++) {
    shapeArray[i].draw();
    if (dist(shapeArray[i].x, shapeArray[i].y, shapeArray[i].x, shapeArray[i].y) < 0 ) {
      shapeArray[i].x = shapeArray[i].x + random(10);
      shapeArray[i].y = shapeArray[i].y + random(10);
      //        shapeArray[i].xSpeed = -shapeArray[i].xSpeed;
      //        shapeArray[i].ySpeed = -shapeArray[i].ySpeed;
    } 
  }
}

