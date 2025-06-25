//ball
//lecture_10_bounucing_a_ball_2D.pde (github)


int x, y, dirx, diry, diam;
color padColor;
int padX, padY, padWidth, padHeight;


void setup(){
  size(800, 600);
  
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
}


void draw(){
  background(200);
  
  //ball drawing
  //fill(128);
  ellipse(x, y, diam, diam);
  x += dirx;
  y += diry;
  
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
  
} // end of draw
