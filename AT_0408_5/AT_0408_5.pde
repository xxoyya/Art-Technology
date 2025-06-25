void setup(){
  size(600, 600);
  frameRate(1);
}

void draw(){
  for(int x = 0; x < width; x += 30){
    for(int y = 0; y < height; y += 30){
      fill(random(255), random(255), random(255));
      rect(x, y, 30, 30);
    }
  }
}
