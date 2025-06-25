//ball
//lecture_10_bounucing_a_ball_2D.pde (github)


int x, y, dirx, diry, diam;
color padColor;
int padX, padY, padWidth, padHeight;
int [] bricks = new int[10];


void setup(){
  size(600, 500);
  
  x = 400;
  y = 300;
  dirx = 4;
  diry = 4;
  diam = 50;
  
  padColor = #00ff00;
  padWidth = 300;
  padHeight = 30;
  padX = 0;
  padY = height - padHeight;
  
  int i = 0;
  while (i < bricks.length){
    bricks[i] = 1;
    i++;
  }
}


void draw(){
  background(255, 240, 240);
  
  //ball drawing
  //fill(128);
  ellipse(x, y, diam, diam);
  x += dirx;
  y += diry;
  
  //bricks drawing
  int i = 0;
  while (i < bricks.length){
    if (bricks[i] == 1){
      fill(227, 239, 255);
    } else{
      fill(255, 240, 240);
    }
    
    rect(i*60, 0, 60, 60);
   i++;
  }
  
  //pad drawing
  fill(padColor);
  padX = mouseX - padWidth / 2;
  rect(padX, padY, padWidth, padHeight);
  
  //bouncing check
  if (x + 25 > width){
    dirx *= -1;
    fill(242, 193, 228);
  }
  else if (x - 25 < 0){
    dirx *= -1;
    fill(193, 204, 242);
  }
  if (y + 25 > height){
    diry *= -1;
  }
  else if (y - 25 < 0){
    diry *= -1;
  }
  
  // pad bouncing checking
  if (x > padX && x < padX + padWidth && y + diam/2 > padY){
    // padWidth -= 30;
    diry *= -1;
  }
  
  //bricks collision checking
  if (y < 60){
    bricks[x / 60] = 0;
    diry *= -1;
  }
  
} // end of draw
