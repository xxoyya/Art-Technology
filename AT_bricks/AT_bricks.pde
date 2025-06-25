int [] bricks = new int[10];

void setup(){
  size(500, 500);
  
  int i = 0;
  while (i < bricks.length){
    bricks[i] = 1;
    i++;
  }
  //printArray(bricks);
}

void draw(){
  background(255);
  
  int i = 0;
  while (i < bricks.length){
    if (bricks[i] == 0){
      fill(255);
    } else{
      fill(186, 205, 247);
    }
    
    rect(50*i, 0, 50, 30);
    i++;
  }
  
  if (mousePressed && mouseY < 30){
    bricks[mouseX / 50] = 1 - bricks[mouseX / 50];
  }
  
}
