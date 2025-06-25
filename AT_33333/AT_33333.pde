int x = 400;
int y = 300;
int x1 = 200;
int y1 = 300;
int dirX = 5;
int dirY = 5;
int dirX1 = 3;
int dirY1 = 3;
int diam = 50;

boolean isCircle = true;
boolean isTriangle = true;
boolean isRect = true;

void setup(){
  size(600, 600);
}

void draw(){
  background(255);
  x += dirX;
  y += dirY;
  x1 += dirX1;
  y1 += dirY1;
  ellipses();
  changes();
}

void ellipses(){
  fill(255, 255, 0);
  circle(x1, y1, diam);
  
  if(isCircle){
    fill(255, 0, 0);
    circle(x, y, diam);
  }
  else if(isTriangle){
    fill(255, 0, 0);
    triangle(x-diam/2, y-diam/2, x, y+diam/2, x+diam/2, y-diam/2);
  }
  else if(isRect){
    fill(255, 0, 0);
    rect(x-diam/2, y-diam/2, diam, diam);
  }
}

void changes(){
  if(x+diam/2 > width){
    isCircle = false;
    isTriangle = false;
    isRect = true;
    dirX *= -1;
  }
  if(x-diam/2 < 0){
    isCircle = false;
    isTriangle = true;
    isRect = false;
    dirX *= -1;
  }
  if(x1+diam/2 > width || x1-diam/2 < 0){
    dirX1 *= -1;
  }
  
  if(y+diam/2 > height || y-diam/2 < 0){
    isCircle = true;
    isTriangle = false;
    isRect = false;
    dirY *= -1;
  }
  if(y1+diam/2 > height || y1-diam/2 < 0){
    dirY1 *= -1;
  }
}
