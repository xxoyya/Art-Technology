void setup(){
  size(800, 600);
  noStroke();
}

void draw(){
  background(200);
  
  if (mousePressed){
    fill(255, 250, 201);
  } else{
    fill(255);
  }
  
  if (mousePressed){
  ellipse(mouseX, mouseY, 50, 50);
  }else{
    rect(mouseX, mouseY, 100, 100);
  }
  
}
