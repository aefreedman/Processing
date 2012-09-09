class Circle extends Shape{
  
  float size;
  
  Circle(float _x, float _y, float _size, color _c){
    super(_x, _y, _c, random(-5, 5), random(-5, 5));
    
    size = _size;
  }

  void draw(){
    super.draw();
    ellipse(x, y, size, size);
  }
}
