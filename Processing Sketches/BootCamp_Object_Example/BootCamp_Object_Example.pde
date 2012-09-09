Shape shapeArray[];

void setup() {
  size(500, 500);
  
  shapeArray = new Shape[1000];
  
  for(int i = 0; i < shapeArray.length; i++){
    if(i < shapeArray.length/2){
      shapeArray[i] = new Circle(width/2, height/2, 20, color(random(255)));
    } else {
      shapeArray[i] = new Square(random(width), random(height), 
                                  10, color(random(255)), 5, 5); 
    }
  }
}

void draw() {
  for(int i = 0; i < shapeArray.length; i++){
    shapeArray[i].draw();
  }
}
