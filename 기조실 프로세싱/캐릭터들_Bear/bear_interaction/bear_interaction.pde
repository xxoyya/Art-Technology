void setup(){
  size(700, 700);
  noStroke();
}


void draw(){  
  ellipseMode(CENTER);
  
  // background
  background(234, 208, 214);
  //fill(181, 225, 130);
  //rect(0, 520, 700, 180);
  //ellipse(350, 520, 800, 150);
  
  //land
  //fill(150, 200, 100);
  //ellipse(10, 550, 100, 50);
  //ellipse(300, 680, 100, 50);
  //ellipse(600, 600, 100, 50);
  
  //fill(118, 158, 72);
  
  //fill_1
  //triangle(0, 550, 0, 520, 10, 550);
  //triangle(5, 550, 10, 500, 20, 550);
  //triangle(10, 550, 20, 520, 30, 550);
  
  //fill_2
  //triangle(280, 680, 285, 650, 295, 680);
  //triangle(290, 680, 300, 630, 305, 680);
  //triangle(300, 680, 315, 650, 318, 680);
  
  //fill_3
  //triangle(580, 600, 590, 570, 605, 600);
  //triangle(595, 600, 600, 550, 610, 600);
  //triangle(605, 600, 615, 570, 620, 600);
  
  //arm 
  //left
  fill(95, 73, 72);
  ellipse(mouseX-100, mouseY, 110, 185);
  fill(113, 89, 88);
  ellipse(mouseX-100, mouseY-5, 105, 180);
  
  //arm
  //right
  fill(95, 73, 72);
  ellipse(mouseX+100, mouseY, 110, 185);
  fill(113, 89, 88);
  ellipse(mouseX+100, mouseY-5, 105, 180);

  
  //body
  fill(90, 72, 71);
  ellipse(mouseX, mouseY+5, 260, 305);
  fill(113, 89, 88);
  ellipse(mouseX, mouseY, 250, 300);
  
  fill(190, 157, 122);
  ellipse(mouseX+3, mouseY+15, 155, 195);
  fill(216, 178, 138);
  ellipse(mouseX, mouseY+10, 150, 190);
  
  // foot
  fill(94, 74, 72);
  ellipse(mouseX-80, mouseY+133, 105, 128);
  ellipse(mouseX+80, mouseY+133, 105, 128);
  fill(113, 89, 88);
  ellipse(mouseX-80, mouseY+130, 100, 120);
  ellipse(mouseX+80, mouseY+130, 100, 120);
  
  fill(171, 138, 107);
  ellipse(mouseX-80, mouseY+135, 50, 78);
  ellipse(mouseX+80, mouseY+135, 50, 78);
  fill(196, 157, 119);
  ellipse(mouseX-80, mouseY+130, 50, 70);
  ellipse(mouseX+80, mouseY+130, 50, 70);


  //ear
  fill(113, 89, 88);
  ellipse(mouseX-70, mouseY-270, 80, 80);
  ellipse(mouseX+70, mouseY-270, 80, 80);
  
  fill(216, 178, 138);
  ellipse(mouseX-70, mouseY-270, 50, 50);
  ellipse(mouseX+70, mouseY-270, 50, 50);
  
  fill(207, 163, 115);
  ellipse(mouseX-65, mouseY-270, 40, 50);
  ellipse(mouseX+65, mouseY-270, 40, 50);
  
  //face
  fill(90, 72, 71);
  ellipse(mouseX, mouseY-195, 205, 207);
  fill(113, 89, 88);
  ellipse(mouseX, mouseY-200, 200, 200);
  
  //eye
  fill(0);
  ellipse(mouseX-40, mouseY-220, 25, 25);
  ellipse(mouseX+40, mouseY-220, 25, 25);
  
  fill(227);
  ellipse(mouseX-35, mouseY-225, 5, 5);
  ellipse(mouseX+45, mouseY-225, 5, 5);
  
  fill(150);
  ellipse(mouseX-40, mouseY-215, 8, 5);
  fill(0);
  ellipse(mouseX-39, mouseY-217, 9, 5);
  
  fill(150);
  ellipse(mouseX+40, mouseY-215, 8, 5);
  fill(0);
  ellipse(mouseX+41, mouseY-217, 9, 5);
  
  //mouse
  fill(206, 168, 127);
  ellipse(mouseX, mouseY-155, 75, 65);
  
  fill(216, 178, 138);
  ellipse(mouseX, mouseY-160, 70, 60);
  
  fill(198, 136, 134);
  arc(mouseX, mouseY-150, 40, 30, 0, PI+QUARTER_PI, CHORD);
  
  fill(185, 108, 105);
  ellipse(mouseX, mouseY-142, 30, 13);
  
  //nose
  fill(85, 72, 71);
  ellipse(mouseX, mouseY-177, 33, 33);
  
  fill(95, 86, 85);
  ellipse(mouseX, mouseY-180, 30, 30);
  
}
