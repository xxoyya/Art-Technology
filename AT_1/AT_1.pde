//ball

int x;

void setup(){
  size(600, 400);
  x = 0;
}

void draw(){
  background(200);
  fill(128);
  ellipse(x, 100, 50, 50);
  x = x + 1;
}
