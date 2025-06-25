int a = 300;
int i = 0;

void setup(){
  size(600, 600);
}

void draw(){
  background(255);
  if(i == 0){
    circle(300, a, 300);
  }
  if(i == 1){
    fill(255, 0, 0);
    circle(300, a, 300);
  }
  if(i == 2){
    fill(255, 130, 0);
    circle(300, a, 300);
  }
  if(i == 3){
    fill(255, 255, 0);
    circle(300, a, 300);
  }
  if(i == 4){
    fill(0, 255, 0);
    circle(300, a, 300);
  }
  if(i == 5){
    fill(0, 0, 255);
    circle(300, a, 300);
  }
  if(i == 6){
    fill(30, 20, 100);
    circle(300, a, 300);
  }
  if(i == 7){
    fill(110, 10, 150);
    circle(300, a, 300);
  }
}

void mousePressed(){
  if(mouseX > 150 && mouseX < 450 && mouseY > 150 && mouseY < 450 && i < 8){
    i ++;
  }
  if(i >= 8){
    i = 0;
  }
  if(mouseY > 150 && mouseY < 300){
    a -= 3;
  }
  if(mouseY > 300 && mouseY < 450){
    a += 3;
  }
}
