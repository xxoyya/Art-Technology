void setup(){
  size(600, 600);
}

void draw(){
  background(255);
  
  int x = 0;
  while(x < width){
    line(x, 0, x, height);
    x += 10;
    }
    
    int a = 0;
    while(a < height){
      line(0, a, width, a);
      a += 10;
    }
  //verticalLines1();
  //verticalLines2(100, 100, 400, 400);
  //verticalLines2(300, 300, 500, 500);
  //verticalLines2(5, 5, 200, 500);
}

void verticalLines1(){
  float x = 0.0;
  while(x < 600){
    line(x, 0, x, 600);
    x += 10;
  }
}

void verticalLines2(float x1, float y1, float x2, float y2){
  while(x1 < x2){
    line(x1, y1, x2, y2);
    x1 += 10;
  }
}
