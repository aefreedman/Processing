boolean startLoop;

void setup(){
  size(1280, 720);
  startLoop = true;
  frameRate(15);
}

void draw(){
  background(0);
  
//  int i = 0;
  
//  while(startLoop){
//    i = i + 1;
//    println(i);
//    ellipse(25 + (i * 50), height/2, 50, 50);
//    if(random(10) < 2){
//      startLoop = false;
//    }
//  }
  
  for(int i = int(random(5)); i < int(random(50)); i = i + 1){
  ellipse(25 + (i * 50), height/2, 50, 50);
  }
}
