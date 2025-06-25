void setup(){
  size(600, 600);
}

void draw(){
  int lines = 0;
  background(255);
  while(lines < 10){
    strokeWeight(random(10));
    stroke(random(255));
    line(mouseX, mouseY, random(width), random(height));
    lines++;
  }
}
