int x, y = 0;
float angle = 0; 
float aVelocity = 0;
float aAcceleration = 0.0001;

void setup() {
  size(1100, 800);
}

void wind(int x, int y) {
  pushStyle();
  background(220, 200, 200);

  //body
  fill(243, 234, 205);
  stroke(222, 210, 174);
  quad(200, 200, 250, 190, 280, 400, 190, 420);
  quad(155, 185, 200, 200, 190, 420, 110, 390);
  quad(250, 190, 260, 165, 300, 360, 280, 400);

  //window
  fill(204, 184, 125);
  stroke(204, 184, 125);
  ellipse(228, 240, 25, 40);
  ellipse(232, 300, 30, 45);
  fill(223, 212, 115);
  stroke(223, 212, 115);
  ellipse(225, 238, 17, 33);
  ellipse(228, 298, 21, 38);

  //door
  fill(204, 184, 125);
  stroke(204, 184, 125);
  ellipse(236, 360, 40, 40);
  quad(216, 360, 256, 360, 257, 404, 217, 413);
  fill(223, 212, 115);
  stroke(223, 212, 115);
  ellipse(232, 359, 32, 36);
  quad(216, 360, 248, 360, 248, 405, 216, 413);  
  fill(173, 163, 139);
  stroke(173, 163, 139);
  triangle(216, 413, 216, 380, 256, 404);
  
  //head
  fill(252, 252, 245);
  stroke(222, 222, 222);
  quad(155, 140, 215, 130, 265, 145, 145, 165);
  stroke(252, 252, 245);
  quad(146, 165, 264, 145, 255, 170, 195, 181);
  stroke(222, 222, 222);
  quad(145, 165, 204, 181, 204, 201, 145, 185);
  quad(204, 181, 255, 170, 255, 190, 204, 201);
  quad(255, 170, 265, 145, 265, 165, 255, 190);
  
  fill(232, 194, 194);
  stroke(214, 177, 177);
  quad(155, 160, 155, 110, 200, 123, 200, 173);
  quad(200, 173, 200, 123, 250, 113, 250, 163);
  quad(250, 163, 250, 113, 257, 98, 257, 148);
  triangle(200, 123, 205, 60, 250, 113);
  triangle(155, 110, 205, 60, 200, 123);
  triangle(250, 113, 205, 60, 257, 98);
  
  //wing
  pushMatrix();
  translate(227, 145);
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

void draw() {
  wind(1100, 800);
}
