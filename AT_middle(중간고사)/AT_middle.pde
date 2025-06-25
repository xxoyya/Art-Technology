int x = 200;
int y = 450;
int a = 400;
int b = 150;
int diam = 100;

int k = 0;

boolean circle1 = true;
boolean circle2 = true;

void setup(){
  size(600, 600);
}

void draw(){
  //background(225);
  if(circle1){
    fill(255, 0, 0);
    circle(x, y, diam);
  }
  
  if(circle2){
    fill(255, 255, 0);
    circle(a, b, diam);
  }
  
  if(0 < mouseX && mouseX < 600 && 0 < mouseY && mouseY < 600){
    fill(0);
    textSize(50);
    text(mouseX, 300, 50);
    text(mouseY, 400, 50);
  }
}

void mousePressed(){
    if(x-diam/2 < mouseX && mouseX < x+diam/2 && y-diam/2 < mouseY && mouseY < y+diam/2){
      circle1 = !circle1;
      fill(255, 255, 0);
      circle(x, y, diam);
      k = k + 1;
    }
    if(a-diam/2 < mouseX && mouseX < a+diam/2 && b-diam/2 < mouseY && mouseY < b+diam/2){
      circle2 = !circle2;
      fill(255, 0, 0);
      circle(a, b, diam);
      k = k + 1;
  }
  if(k>0){
    fill(0);
    text((k), 100, 50);
    textSize(50);
  }
}
