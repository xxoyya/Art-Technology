void setup(){
  size(500, 500);
  
}

void xxo(){
  pushStyle();
  fill(200, 100, 150);
  ellipse(width/2, width/2, 100, 100);
  rect(0, 0, 100, 100);
  popStyle();
}

void xxo2(int x, int y){
  ellipse(x, y, 50, 50);
  ellipse(x*2, y*2, 50, 50);
}

void draw(){
  xxo();
  xxo2(mouseX, mouseY);
}
