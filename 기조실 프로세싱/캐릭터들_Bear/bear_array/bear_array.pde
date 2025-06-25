BEAR[] bears = new BEAR[200];

void setup() {
  size(1500, 800);
  for (int i = 0; i < bears.length; i++){
    bears[i] = new BEAR(random(width), random(height), 30, 30);
  }
}

void draw(){
  background(255);
  for (int i = 0; i < bears.length; i ++){
    bears[i].display();
    bears[i].jiggle();
  }
}
