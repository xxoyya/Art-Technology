int x = 0;
int y = 0;
float angle = 0; 
float aVelocity = 0;
float aAcceleration = 0.0001;

void setup() {
  size(1100, 800);
}

void draw(){
  background(0);
  wind(300, 100);
}

void wind(int x, int y) {
  pushStyle();
  background(220, 200, 200);
  
  //shadow
  fill(126, 131, 119, 90);
  stroke(126, 131, 119, 90);
  ellipse(x+130, y+380, 300, 80);

  //body
  fill(243, 234, 205);
  stroke(222, 210, 174);
  quad(x+200, y+200, x+250, y+190, x+280, y+400, x+190, y+420);
  quad(x+155, y+185, x+200, y+200, x+190, y+420, x+110, y+390);
  quad(x+250, y+190, x+260, y+165, x+300, y+360, x+280, y+400);

  //window
  fill(204, 184, 125);
  stroke(204, 184, 125);
  ellipse(x+228, y+240, 25, 40);
  ellipse(x+232, y+300, 30, 45);
  
  fill(223, 212, 115);
  stroke(223, 212, 115);
  ellipse(x+225, y+238, 17, 33);
  ellipse(x+228, y+298, 21, 38);

  //door
  fill(204, 184, 125);
  stroke(204, 184, 125);
  ellipse(x+236, y+360, 40, 40);
  quad(x+216, y+360, x+256, y+360, x+257, y+404, x+217, y+413);
  
  fill(223, 212, 115);
  stroke(223, 212, 115);
  ellipse(x+232, y+359, 32, 36);
  quad(x+216, y+360, x+248, y+360, x+248, y+405, x+216, y+413);
  
  fill(173, 163, 139);
  stroke(173, 163, 139);
  triangle(x+216, y+413, x+216, y+380, x+256, y+404);
  
  //head
  fill(252, 252, 245);
  stroke(222, 222, 222);
  quad(x+155, y+140, x+215, y+130, x+265, y+145, x+145, y+165);
  stroke(252, 252, 245);
  quad(x+146, y+165, x+264, y+145, x+255, y+170, x+195, y+181);
  stroke(222, 222, 222);
  quad(x+145, y+165, x+204, y+181, x+204, y+201, x+145, y+185);
  quad(x+204, y+181, x+255, y+170, x+255, y+190, x+204, y+201);
  quad(x+255, y+170, x+265, y+145, x+265, y+165, x+255, y+190);
  
  fill(232, 194, 194);
  stroke(214, 177, 177);
  quad(x+155, y+160, x+155, y+110, x+200, y+123, x+200, y+173);
  quad(x+200, y+173, x+200, y+123, x+250, y+113, x+250, y+163);
  quad(x+250, y+163, x+250, y+113, x+257, y+98, x+257, y+148);
  triangle(x+200, y+123, x+205, y+60, x+250, y+113);
  triangle(x+155, y+110, x+205, y+60, x+200, y+123);
  triangle(x+250, y+113, x+205, y+60, x+257, y+98);
  
  //wing
  pushMatrix();
  translate(x+227, y+145);
  rotate(angle);
  
  fill(124, 110, 90);
  stroke(124, 110, 90);
  rect(0, -145, 8, 290);
  rect(-145, -8, 290, 8);
  
  fill(188, 188, 188, 95);
  quad(-145, -8, -145, -48, -45, -48, -45, -8);
  quad(8, -145, 48, -145, 48, -45, 8, -45);
  quad(145, 0, 145, 40, 45, 40, 45, 0); 
  quad(0, 145, -40, 145, -40, 45, 0, 45);
  
  aVelocity = aVelocity + aAcceleration;
  
  angle = angle + aVelocity;
  
  if (angle > 30) {
    aVelocity = aVelocity - aAcceleration;
  }
  
  fill(85, 70, 70);
  stroke(85, 70, 70);
  ellipse(0, 0, 20, 21);
  fill(124, 110, 90);
  stroke(124, 110, 90);
  circle(2, 0, 17);
  popMatrix();

  popStyle();
}
