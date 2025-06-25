boolean button1 = false;
boolean button2 = false;

int x = 100;
int y = 100;
int a = 300;
int x1 = 400;
int y1 = 100;
int w = 100;
int h = 100;

void setup(){
  size(600, 600);
}

void draw(){
  background(255);
  
  strokeWeight(5);
  
  if (button1){
    background(0);
  }
  else if (button2){
    background(150);
  }
  
  fill(0);
  stroke(70);
  rect(x, y, w, h);
  
  fill(150);
  stroke(70);
  rect(x1, y1, w, h);
  
  fill(255, 0, 0);
  strokeWeight(0);
  circle(a, 500, 100);
  if (mousePressed && (mouseButton == LEFT)){
      a += -1;
  } else if (mousePressed && (mouseButton == RIGHT)){
    a += +1;
  }
}

void mousePressed(){
  if (mouseX > x-5 && mouseX < x+w+5 && mouseY > y-5 && mouseY < y+h+5){
    button1 = !button1;
  } else if (mouseX > x1-5 && mouseX < x1+w+5 && mouseY > y1-5 && mouseY < y1+h+5){
    button2 = !button2;
  }
}
