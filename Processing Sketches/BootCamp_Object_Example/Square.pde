class Square extends Shape{
  
  float size;
  
  Square(float _x, float _y, float _size, color _c, 
          float _xSpeed, float _ySpeed){
            super(_x, _y, _c, _xSpeed, _ySpeed);
            size = _size;
  }
  
  void draw(){
    super.draw();
    rect(x, y, size, size);
  }        
          
}
