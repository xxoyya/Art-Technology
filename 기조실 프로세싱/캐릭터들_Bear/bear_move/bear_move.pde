//move(gravity)

float x = 350;
float y = 0;
float speed = 0;
float gravity = 0.2;

void setup(){
  size(700, 700);
  noStroke();
}


void draw(){  
  ellipseMode(CENTER);   //(350, 350)
  rectMode(CENTER);
  
  // background
  background(227, 199, 206);
  fill(229,  195, 186);
  ellipse(350, 80, 900, 300);
  fill(225, 179, 163);
  ellipse(350, 60, 900, 130);
  fill(214, 172, 141);
  ellipse(350, 30, 1000, 40);
  rect(350, 0, 700, 40);
  
  fill(174, 194, 121);
  rect(350, 640, 700, 180);
  ellipse(350, 520, 800, 150);
  
  //land
  fill(146, 183, 106);
  ellipse(10, 550, 100, 50);
  ellipse(300, 680, 100, 50);
  ellipse(600, 600, 100, 50);
  
  fill(121, 154, 83);
  
  //fill_1
  triangle(0, 550, 0, 520, 10, 550);
  triangle(5, 550, 10, 500, 20, 550);
  triangle(10, 550, 20, 520, 30, 550);
  
  //fill_2
  triangle(280, 680, 285, 650, 295, 680);
  triangle(290, 680, 300, 630, 305, 680);
  triangle(300, 680, 315, 650, 318, 680);
  
  //fill_3
  triangle(580, 600, 590, 570, 605, 600);
  triangle(595, 600, 600, 550, 610, 600);
  triangle(605, 600, 615, 570, 620, 600);
  
  //moon
  pushMatrix();
  translate(350, 100);
  rotate(radians(-50));
  fill(201, 188, 182);
  arc(148, 153, 155, 155, 0, HALF_PI+HALF_PI, PIE);
  fill(248, 250, 255);
  arc(150, 150, 150, 150, 0, HALF_PI+HALF_PI, PIE);
  fill(239, 232, 240);
  arc(150, 150, 70, 30, 0, HALF_PI+HALF_PI, PIE);
  popMatrix();
  
  ellipse(600, 50, 10, 10);
  ellipse(620, 70, 10, 5);
  ellipse(600, 110, 10, 10);
  ellipse(540, 120, 5, 5);
  ellipse(560, 150, 10, 10);
  
  
  //arm 
  //left
  fill(95, 73, 72);
  ellipse(x-100, y, 110, 185);
  fill(113, 89, 88);
  ellipse(x-100, y-5, 105, 180);
  
  //arm
  //right
  fill(95, 73, 72);
  ellipse(x+100, y, 110, 185);
  fill(113, 89, 88);
  ellipse(x+100, y-5, 105, 180);

  
  //body
  fill(90, 72, 71);
  ellipse(x, y+5, 260, 305);
  fill(113, 89, 88);
  ellipse(x, y, 250, 300);
  
  fill(190, 157, 122);
  ellipse(x+3, y+15, 155, 195);
  fill(216, 178, 138);
  ellipse(x, y+10, 150, 190);
  
  // foot
  fill(94, 74, 72);
  ellipse(x-80, y+133, 105, 128);
  ellipse(x+80, y+133, 105, 128);
  fill(113, 89, 88);
  ellipse(x-80, y+135, 100, 120);
  ellipse(x+80, y+135, 100, 120);
  
  fill(171, 138, 107);
  ellipse(x-80, y+135, 50, 78);
  ellipse(x+80, y+135, 50, 78);
  fill(196, 157, 119);
  ellipse(x-80, y+130, 50, 70);
  ellipse(x+80, y+130, 50, 70);


  //ear
  fill(113, 89, 88);
  ellipse(x-70, y-270, 80, 80);
  ellipse(x+70, y-270, 80, 80);
  
  fill(216, 178, 138);
  ellipse(x-70, y-270, 50, 50);
  ellipse(x+70, y-270, 50, 50);
  
  fill(207, 163, 115);
  ellipse(x-65, y-270, 40, 50);
  ellipse(x+65, y-270, 40, 50);
  
  //face
  fill(90, 72, 71);
  ellipse(x, y-195, 205, 207);
  fill(113, 89, 88);
  ellipse(x, y-200, 200, 200);
  
  //eye
  fill(0);
  ellipse(x-40, y-220, 25, 25);
  ellipse(x+40, y-220, 25, 25);
  
  fill(227);
  ellipse(x-35, y-225, 5, 5);
  ellipse(x+45, y-225, 5, 5);
  
  fill(150);
  ellipse(x-40, y-215, 8, 5);
  fill(0);
  ellipse(x-39, y-217, 9, 5);
  
  fill(150);
  ellipse(x+40, y-215, 8, 5);
  fill(0);
  ellipse(x+41, y-217, 9, 5);
  
  //mouse
  fill(206, 168, 127);
  ellipse(x, y-155, 75, 65);
  
  fill(216, 178, 138);
  ellipse(x, y-160, 70, 60);
  
  fill(198, 136, 134);
  arc(x, y-150, 40, 30, 0, PI+QUARTER_PI, CHORD);
  
  fill(185, 108, 105);
  ellipse(x, y-142, 30, 13);
  
  //nose
  fill(85, 72, 71);
  ellipse(x, y-177, 33, 33);
  
  fill(95, 86, 85);
  ellipse(x, y-180, 30, 30);
  
  y = y + speed;
  speed = speed + gravity;
  
  if (speed < 0.95 && y > height-200) {
    speed = 0;
    gravity = 0;
  }
  else if (y > height - 200) {
    speed = speed * -0.95;
  }
}
