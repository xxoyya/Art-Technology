void setup(){
  size(700, 700);
  noStroke();
}


void draw(){  
  ellipseMode(CENTER);   //(350, 350)
  
  // background
  background(234, 208, 214);
  
  //arm 
  //left
  fill(95, 73, 72);
  ellipse(250, 350, 110, 185);
  fill(113, 89, 88);
  ellipse(250, 345, 105, 180);
  
  //arm
  //right
  fill(95, 73, 72);
  ellipse(450, 350, 110, 185);
  fill(113, 89, 88);
  ellipse(450, 345, 105, 180);

  
  //body
  fill(90, 72, 71);
  ellipse(350, 355, 260, 305);
  fill(113, 89, 88);
  ellipse(350, 350, 250, 300);
  
  fill(190, 157, 122);
  ellipse(353, 365, 155, 195);
  fill(216, 178, 138);
  ellipse(350, 360, 150, 190);
  
  // foot
  fill(94, 74, 72);
  ellipse(270, 483, 105, 128);
  ellipse(430, 483, 105, 128);
  fill(113, 89, 88);
  ellipse(270, 480, 100, 120);
  ellipse(430, 480, 100, 120);
  
  fill(171, 138, 107);
  ellipse(270, 485, 50, 78);
  ellipse(430, 485, 50, 78);
  fill(196, 157, 119);
  ellipse(270, 480, 50, 70);
  ellipse(430, 480, 50, 70);


  //ear
  fill(113, 89, 88);
  ellipse(280, 80, 80, 80);
  ellipse(420, 80, 80, 80);
  
  fill(216, 178, 138);
  ellipse(280, 80, 50, 50);
  ellipse(420, 80, 50, 50);
  
  fill(207, 163, 115);
  ellipse(285, 80, 40, 50);
  ellipse(415, 80, 40, 50);
  
  //face
  fill(90, 72, 71);
  ellipse(350, 155, 205, 207);
  fill(113, 89, 88);
  ellipse(350, 150, 200, 200);
  
  //eye
  fill(0);
  ellipse(310, 130, 25, 25);
  ellipse(390, 130, 25, 25);
  
  fill(227);
  ellipse(315, 125, 5, 5);
  ellipse(395, 125, 5, 5);
  
  fill(150);
  ellipse(310, 135, 8, 5);
  fill(0);
  ellipse(311, 133, 9, 5);
  
  fill(150);
  ellipse(390, 135, 8, 5);
  fill(0);
  ellipse(391, 133, 9, 5);
  
  //mouse
  fill(206, 168, 127);
  ellipse(350, 195, 75, 65);
  
  fill(216, 178, 138);
  ellipse(350, 190, 70, 60);
  
  fill(198, 136, 134);
  arc(350, 200, 40, 30, 0, PI+QUARTER_PI, CHORD);
  
  fill(185, 108, 105);
  ellipse(350, 208, 30, 13);
  
  //nose
  fill(85, 72, 71);
  ellipse(350, 173, 33, 33);
  
  fill(95, 86, 85);
  ellipse(350, 170, 30, 30);
  
}
