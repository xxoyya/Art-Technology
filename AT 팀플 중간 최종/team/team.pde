int hornSize = 0;
int x = 0;
int y = 0;
float angle = 0;
float aVelocity = 0;
float aAcceleration = 0.0001;
float rabx =300;
float raby =600;
float rabShadowLength = 0;
float speed =0;
float gravity = 0.1;
int gx = 0;
float tx = 0;
float ty = 0;
boolean day = true;

void setup() {
  size(1100, 800);
}

//background
void draw() {
  if (mousePressed)
  {
    background(0);
    fill(#070B27);
    ellipse(-33, 509, 1478, 919);
    fill(#0A113B);
    ellipse(-33, 651, 1587, 919);
    ellipse(457, 629, 832, 919);
    ellipse(985, 570, 1326, 919);
    //grassland0
    noStroke();
    fill(#90C496);
    ellipse(612, 700, 2063, 857);
    fill(#88be8f);
    ellipse(724, 826, 2481, 874);
    fill(#7ab281);
    ellipse(297, 1020, 2481, 874);
    //moon
    fill(#F2D487);
    ellipse(893, 69, 52, 50);
    fill(0);
    ellipse(912, 63, 52, 50);
     //stars
    fill(255, 255, 255);
    ellipse(491, 63, 5, 5);
    ellipse(700, 23, 5, 5);
    fill(#A09CAA);
    ellipse(750, 78, 5, 5);
    ellipse(682, 119, 5, 5);
    ellipse(567, 144, 5, 5);
    fill(#857BA2);
    ellipse(467, 24, 5, 5);
    ellipse(296, 80, 5, 5);
    day = false;
  } else {
    //morning

    background(#79C1FF);
    fill(#79bffb);
    ellipse(-33, 509, 1478, 919);
    fill(#74b9f4);
    ellipse(-33, 651, 1587, 919);
    ellipse(457, 629, 832, 919);
    ellipse(985, 570, 1326, 919);
    //grassland0
    noStroke();
    fill(#90C496);
    ellipse(612, 700, 2063, 857);
    fill(#88be8f);
    ellipse(724, 826, 2481, 874);
    fill(#7ab281);
    ellipse(297, 1020, 2481, 874);
    //sun
    fill(#F2D487);
    ellipse(891, 131, 60, 60);
    //cloud 1
    fill(#FAFFFB);
    ellipse(300, 109, 155, 60);
    ellipse(330, 82, 60, 60);
    ellipse(350, 124, 96, 60);
    ellipse(380, 90, 98, 60);
    ellipse(370, 109, 171, 60);
    //cloud 2
    ellipse(792, 148, 209, 60);
    ellipse(710, 94, 76, 60);
    ellipse(731, 160, 94, 60);
    ellipse(780, 105, 122, 60);
    ellipse(694, 121, 151, 60);
    //cloud 3
    fill(#F2F7FC);
    ellipse(979, 183, 346, 64);
    ellipse(1029, 206, 175, 60);
    ellipse(918, 210, 108, 60);
    ellipse(1011, 150, 145, 60);
    ellipse(904, 161, 114, 60);
    //cloud 4
    fill(#DCE7F2);
    ellipse(-41, 5, 338, 177);
    ellipse(-63, 50, 606, 60);
    ellipse(73, 83, 130, 61);
    ellipse(-73, 94, 277, 108);
    day = true;
  }


  //custom functions
  makeCow(900, 300);
  wind(0, 0);
  shoongshoong(400, 350);
  drawSheep(500, 440);
  minji();
}


void makeCow(int x, int y) {
  pushStyle();
  noStroke();
    
  //shadow
  if (day) {
    fill(#5a745d, 150);
  } else {
    fill(#5a745d, 0);
  }
  ellipse(x+1, y+104, 179, 37);  
  
  //create horns
  stroke(1);
  fill(245, 245, 220);
  triangle(x-90, y-60, x-85, y-60-hornSize, x-80, y-60);
  triangle(x-60, y-60, x-55, y-60-hornSize, x-50, y-60);

  noStroke();
  //make cow legs
  //x + 11 (+7 + 4 +15) y - 9(-6 -3)
  fill(205, 205, 205);
  rect(x-42, y+32, 20, 60);
  fill(30, 30, 30);
  rect(x-42, y+74, 20, 22);
  fill(200);
  triangle(x-42, y+98, x-32, y+91, x-20, y+98);
  fill(190, 190, 190);
  rect(x-42, y+32, 20, 25);
  
  fill(255, 255, 255);
  rect(x-55, y+41, 20, 60);
  fill(30, 30, 30);
  rect(x-55, y+83, 20, 22);
  fill(200);
  triangle(x-55, y+107, x-45, y+100, x-35, y+107);
  fill(229, 229, 229);
  rect(x-55, y+32, 20, 30);
  
  fill(205, 205, 205);
  rect(x+37, y+32, 20, 60);
  fill(30, 30, 30);
  rect(x+37, y+74, 20, 22);
  fill(200);
  triangle(x+37, y+98, x+47, y+91, x+57, y+98);
  fill(190, 190, 190);
  rect(x+37, y+32, 20, 25);

  fill(255, 255, 255);
  rect(x+24, y+41, 20, 60);
  fill(30, 30, 30);
  rect(x+24, y+83, 20, 22);
  fill(200);
  triangle(x+24, y+107, x+34, y+100, x+44, y+107);
  fill(229, 229, 229);
  rect(x+24, y+32, 20, 30);
  
  
  //make cow body
  fill(255, 255, 255);
  rect(x-75, y-50, 150, 100, 28);
  
  //make cow body shadow
  fill(234, 234, 234);
  triangle(x+60, y+-33, x+60, y+38, x+-26, y+38);

  //make cow spots
  fill(0, 0, 0);
  ellipse(x+-45, y-18, 19, 24);
  ellipse(x-52, y+-7, 23, 19);
  ellipse(x-42, y-8, 22, 24);
  ellipse(x+-7, y+18, 35, 19);
  ellipse(x+2, y+8, 34, 24);
  ellipse(x+1, y-1, 26, 25);
  ellipse(x+41, y-25, 27, 19);
  ellipse(x+32, y-20, 26, 19);
  ellipse(x+42, y-12, 26, 30);
  ellipse(x+41, y+33, 18, 25);
  ellipse(x+48, y+32, 24, 19);
  ellipse(x+51, y+22, 10, 10);

  //create cow head & mouse shadow
  fill(229, 229, 229);
  rect(x-90, y-50, 67, 55, 13, 12, 44, 59);
  fill(229, 229, 229);
  ellipse(x+-56, y+-1, 50, 39);

  
  //create cow head & mouse
  fill(255, 255, 255);
  rect(x-101, y-64, 67, 64, 13, 12, 44, 59);
  fill(255, 203, 215);
  ellipse(x+-67, y+-6, 50, 39);
  
  //create cow mouse animation
  stroke(1);
  strokeWeight(3);
  if (mousePressed) {
    fill(245, 245, 220);
    circle(x-66, y, 14);
  } else {
    fill(0, 0, 0);
    line(x-75, y+0, x-58, y+0);
  }

  //create cow eyes
  strokeWeight(1);
  fill(0, 0, 0);
  circle(x+-80, y+-40, 10);
  circle(x+-55, y+-40, 10);
  noStroke();
  fill(255, 255, 255);
  circle(x+-81, y+-41, 3);
  circle(x+-56, y+-41, 3);
  
  //create cow nose
  noStroke();
  fill(144, 90, 129);
  ellipse(x+-74, y+-17, 6, 7);
  ellipse(x+-61, y+-17, 6, 7);
  
  //create cow ears
  fill(255, 255, 255);
  ellipse(x-30, y+-58, 29, 20);
  fill(255, 255, 255);
  ellipse(x-107, y+-58, 29, 20);
  fill(255, 203, 215);
  ellipse(x-32, y+-55, 25, 16);
  fill(255, 203, 215);
  ellipse(x-104, y+-55, 25, 16);
  
  //create cow tail
  stroke(255);
  strokeWeight(8);
  line(x+100, y+1, x+66, y-40);
  noStroke();
  fill(0);
  ellipse(x+101, y+3, 20, 20);

  //increase horn size when mouse is near cow
  stroke(1);
  if (dist(mouseX, mouseY, x, y) < 110) {
    hornSize += 1;
  } else {
    hornSize -= 2;
  }

  hornSize = constrain(hornSize, 0, 15);

  //if horn size is max and mouse pressed create milk
  if (hornSize == 15 && mousePressed) {
    noStroke();
    fill(228, 204, 204);
    rect(x-110, y+40, 20, 20, 5);
     fill(228, 204, 204);
    rect(x-110, y+40, 20, 20, 5);
    fill(255);
    rect(x-115, y+53, 30, 60, 5);
    fill(228);
    rect(x-112, y+57, 24, 52, 5);
    fill(255);
    rect(x-110, y+59, 25, 53, 5);
  }


  popStyle();
}

void wind(int x, int y) {
  pushStyle();

  //shadow
  if (day) {
    fill(#5a745d, 150);
  } else {
    fill(#5a745d, 0);
  }
  ellipse(x+144, y+414, 306, 94);

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

void shoongshoong(int a, int b) {

  pushStyle();

  int x=a;
  int y=b+70;
  if (mouseX<a+200 && mouseX>a && mouseY>b && mouseY<b+90) {
    y-=70;
  }

  //shadow
  if (day) {
    fill(#5a745d, 150);
  } else {
    fill(#5a745d, 0);
  }
  quad(a, b+100, a-70, b+135, a+118, b+140, a+200, b+100);

  //hair
  stroke(#1DA7CB);
  fill(#1DA7CB);
  ellipse(x+100, y-76, 20, 20);
  ellipse(x+108, y-70, 20, 20);
  ellipse(x+110, y-54, 25, 25);
  ellipse(x+111, y-38, 25, 25);
  ellipse(x+109, y-24, 23, 23);

  //ear
  strokeWeight(10);
  strokeJoin(ROUND);
  stroke(255);
  triangle(x+69, y-66, x+73, y-66, x+71, y-72);
  triangle(x+102, y-66, x+98, y-66, x+100, y-72);

  //face
  noStroke();
  fill(255);
  rect(x+64, y-66, 44, 65);
  fill(#F5E7B2);
  ellipse(x+85, y, 70, 50);

  //hair
  stroke(#1DA7CB);
  fill(#1DA7CB);
  ellipse(x+86, y-68, 12, 12);
  stroke(255);
  fill(255);
  ellipse(x+97, y-66, 8, 2);

  //eyes
  fill(0);
  stroke(0);
  strokeWeight(2);
  ellipse(x+80, y-35, 5, 10);
  ellipse(x+90, y-35, 5, 10);

  //eyebrows
  stroke(0);
  strokeWeight(1);
  noFill();
  arc(x+79, y-50, 5, 5, PI, TWO_PI);
  arc(x+92, y-50, 5, 5, PI, TWO_PI);

  //nose
  fill(0);
  ellipse(x+77, y-15, 3, 3);
  ellipse(x+91, y-15, 3, 3);

  //wall
  noStroke();
  fill(#A0780B);
  rect(a, b, 200, 100);
  stroke(#F5CF83);
  strokeWeight(1);
  line(a, b+20, a+200, b+20);
  line(a, b+40, a+200, b+40);
  line(a, b+60, a+200, b+60);
  line(a, b+80, a+200, b+80);
  line(a, b+100, a+200, b+100);
  line(a+50, b, a+50, b+20);
  line(a+150, b, a+150, b+20);
  line(a+100, b+20, a+100, b+40);
  line(a+50, b+40, a+50, b+60);
  line(a+150, b+40, a+150, b+60);
  line(a+100, b+60, a+100, b+80);
  line(a+50, b+80, a+50, b+100);
  line(a+150, b+80, a+150, b+100);
  //hands
  fill(#B2EFF5);
  noStroke();
  ellipse(a+50, b, 20, 18);
  ellipse(a+120, b, 20, 18);


  popStyle();
}

void drawSheep(int x, int y) {
  pushStyle();
  rectMode(CENTER);
  noStroke();

  //shadow
  if (day) {
    fill(#5a745d, 150);
  } else {
    fill(#5a745d, 0);
  }
  ellipse(x+236, y+274, 324, 100);


  //legs_fore
  fill(218, 196, 127);
  rect(x+160, y+255, 25, 60, 5);
  fill(173, 148, 72);
  rect(x+160, y+279, 25, 14, 5);
  fill(255, 238, 180);
  rect(x+145, y+260, 25, 60, 5);
  fill(211, 178, 78);
  rect(x+145, y+283, 25, 14, 5);

  //legs_hind
  fill(218, 196, 127);
  rect(x+295, y+255, 25, 60, 5);
  fill(173, 148, 72);
  rect(x+295, y+279, 25, 14, 5);
  fill(255, 238, 180);
  rect(x+280, y+260, 25, 60, 5);
  fill(211, 178, 78);
  rect(x+281, y+283, 25, 14, 5);


  //body_top
  fill(255);
  ellipse(x+125, y+170, 50, 50);
  fill(255);
  ellipse(x+160, y+160, 60, 60);
  fill(250);
  ellipse(x+205, y+155, 75, 75);
  ellipse(x+245, y+145, 50, 50);
  fill(250);
  ellipse(x+280, y+160, 65, 65);
  ellipse(x+310, y+169, 50, 50);

  //body_bottom
  fill(245);
  ellipse(x+125, y+220, 55, 55);
  fill(240);
  ellipse(x+165, y+229, 70, 70);
  fill(237);
  ellipse(x+210, y+240, 60, 60);
  fill(240);
  ellipse(x+250, y+230, 75, 75);
  fill(245);
  ellipse(x+295, y+230, 50, 50);
  fill(250);
  ellipse(x+315, y+200, 65, 65);

  //body_middle
  fill(255);
  ellipse(x+165, y+200, 65, 65);
  fill(250);
  ellipse(x+225, y+195, 80, 80);
  ellipse(x+280, y+205, 60, 60);
  fill(250);
  ellipse(x+115, y+190, 50, 50);

  //tail
  if (tx > -5 && ty > -5) {
    tx = tx - 0.1;
    ty = ty - 0.1;
  } else {
    tx = tx * -1;
    ty = ty * -1;
  }

  fill(240);
  ellipse(x+340+tx, y+165+ty, 25, 25);
  fill(250);
  ellipse(x+340+tx*1.5, y+150+ty*1.5, 30, 30);
  fill(240);
  ellipse(x+380+tx*3, y+150+ty*3, 30, 30);
  fill(245);
  ellipse(x+360+tx*2, y+160+ty*2, 35, 35);
  fill(255);
  ellipse(x+365+tx*2, y+140+ty*2, 35, 35);


  //face_center
  fill(248);
  ellipse(x+135, y+150, 75, 85);
  fill(255, 238, 180);
  ellipse(x+125, y+140, 75, 85);

  //face_top
  fill(245);
  ellipse(x+90, y+125, 35, 35);

  fill(250);
  ellipse(x+115, y+120, 25, 25);
  fill(250);
  ellipse(x+140, y+115, 35, 35);
  fill(245);
  ellipse(x+165, y+125, 30, 30);
  fill(255);
  ellipse(x+100, y+105, 45, 45);
  ellipse(x+120, y+90, 40, 40);
  ellipse(x+145, y+90, 30, 30);
  ellipse(x+155, y+110, 40, 40);
  fill(255);
  ellipse(x+90, y+140, 20, 20);
  fill(255);
  ellipse(x+165, y+135, 20, 20);


  //mouse
  fill(255, 160, 200);
  ellipse(x+125, y+160, 25, 25);

  //grass
  if (mousePressed) {
    gx += 1;
    if (gx > 50) {
      gx = gx*-1;
    }


    fill(34, 218, 47);
    triangle(x+92+gx, y+172, x+92+gx, y+168, x+160+gx, y+170);
    fill(42, 169, 51);
    triangle(x+90+gx, y+167, x+90+gx, y+163, x+160+gx, y+165);
    fill(29, 108, 38);
    triangle(x+88+gx, y+168, x+158+gx, y+165, x+158+gx, y+171);
    fill(24, 183, 36);
    triangle(x+90+gx, y+166, x+160+gx, y+162, x+160+gx, y+168);
  }


  //tooth
  fill(255);
  rect(x+125, y+165, 10, 5, 5);
  fill(255, 238, 180);
  rect(x+125, y+150, 30, 25);

  //nose
  fill(240, 196, 127);
  triangle(x+115, y+153, x+125, y+162, x+133, y+153);


  //eyes
  fill(0);
  ellipse(x+110, y+147, 9, 9);
  ellipse(x+140, y+147, 9, 9);
  fill(255);
  ellipse(x+112, y+145, 3, 3);
  ellipse(x+142, y+145, 3, 3);

  //ears
  fill(253, 238, 190);
  ellipse(x+75, y+120, 20, 30);
  ellipse(x+170, y+120, 20, 30);

  fill(255, 215, 3);
  ellipse(x+85, y+100, 45, 45);
  ellipse(x+160, y+100, 45, 45);
  fill(247, 194, 11);
  ellipse(x+85, y+100, 30, 30);
  ellipse(x+160, y+100, 30, 30);
  fill(233, 190, 17);
  ellipse(x+85, y+100, 15, 15);
  ellipse(x+160, y+100, 15, 15);


  //cheek
  fill(255, 194, 214);
  ellipse(x+97, y+155, 20, 20);
  ellipse(x+153, y+155, 20, 20);
  fill(255, 221, 233);
  ellipse(x+95, y+152, 7, 7);
  ellipse(x+150, y+152, 7, 7);
  fill(254, 159, 173);
  ellipse(x+97, y+153, 11, 11);
  ellipse(x+152, y+153, 11, 11);
  fill(255);
  ellipse(x+95, y+152, 5, 5);
  ellipse(x+150, y+152, 5, 5);


  popStyle();
}

void minji() {
  pushStyle();
  noStroke();

  //shadow
  if (day) {
    fill(#5a745d, 150);
  } else {
    fill(#5a745d, 0);
  }
  ellipse(x+317, y+780, 90+rabShadowLength, 41);
  ellipse(x+156, y+761, 84, 15);
  //breadl
  fill(255);
  ellipse(rabx+-75, raby+-47, 24, 2);
  ellipse(rabx+-77, raby+-40, 27, 1);
  ellipse(rabx+-72, raby+-34, 27, 1);
  //ears
  fill(201, 178, 169);
  ellipse(rabx-10, raby-119, 25, 80);
  triangle(rabx+-20, raby+-87, rabx+-11, raby+-135, rabx+5, raby+-82);
  fill(189, 149, 144);
  ellipse(rabx+-8, raby-107, 21, 66);
  fill(222, 203, 195);
  ellipse(rabx+5, raby-119, 30, 80);
  //legback
  fill(201, 178, 169);
  ellipse(rabx-20, raby+35, 47, 85);
  //body
  fill(222, 203, 195);
  ellipse(rabx+20, raby+4, 150, 120);
  //bodyshadow
  fill(196, 179, 172);
  ellipse(rabx+-17, raby-52, 91, 97);
  //face
  fill(222, 203, 195);
  ellipse(rabx+-20, raby-55, 110, 90);
  ellipse(rabx+-60, raby-39, 35, 35);
  fill(236, 216, 208);
  ellipse(rabx+-54, raby-39, 35, 35);
  //earssmall
  fill(189, 149, 144);
  ellipse(rabx+6, raby-122, 21, 66);
  fill(222, 203, 195);
  triangle(rabx+-15, raby+-91, rabx+-5, raby+-135, rabx+5, raby+-82);
  fill(143, 108, 104);
  ellipse(rabx+7, raby-114, 10, 48);

  //eyes
  fill(#BFA094);
  ellipse(rabx-37,raby-64,16,13);
  triangle(rabx+-38,raby+-72,rabx+-29, raby+-61,rabx+-28,raby+-68);
  fill(#483D38);
  ellipse(rabx+-38,raby+-63,14,14);
  fill(120);
  ellipse(rabx+-37,raby+-64,4,7);
  fill(#FCF7F5);
  ellipse(rabx-40,raby-67,4,3);
  
  //legs
  fill(222, 203, 195);
  ellipse(rabx+5, raby+35, 47, 85);
  ellipse(rabx+50, raby+35, 47, 85);
  //nose
  fill(209, 158, 150);
  triangle(rabx-75, raby-47, rabx+-56, raby-47, rabx+-70, raby-38);
  //noseshadow
  fill(84, 72, 67);
  triangle(rabx+-69, raby+-39, rabx+-60, raby+-45, rabx+-71, raby+-42);
  //tail
  fill(222, 203, 195);
  ellipse(rabx+95, raby+11, 27, 25);
  //breadr
  fill(255);
  ellipse(rabx+-39, raby+-47, 24, 2);
  ellipse(rabx+-42, raby+-40, 27, 1);
  ellipse(rabx-36, raby+-34, 27, 2);
  //bouncing
  raby = raby + speed;
  speed = speed + gravity;
  if (raby > height-84) {
    speed = speed * -0.9;
    raby=height-92;
  }
  rabShadowLength += speed;
  if (raby > height-84) {
    rabShadowLength *= -0.9;
  }
  
  rabShadowLength = constrain(rabShadowLength, 0, 140);
  //carrot
  fill(#E0921B);
  ellipse(x+140, y+750, 76, 21);
  fill(#436822);
  ellipse(x+186, y+751, 35, 4);
  ellipse(x+185, y+755, 32, 4);
  ellipse(x+191, y+746, 46, 4);
  fill(#855929);
  ellipse(x+149, y+751, 3, 13);
  ellipse(x+159, y+746, 4, 9);
  ellipse(x+135, y+746, 4, 10);
  
  //flowerfront
  fill(#f3e8e0);
  ellipse(x+87, y+640, 20, 34);
  ellipse(x+69, y+641, 22, 32);
  fill(#FAF1E8);
  ellipse(x+103, y+658, 34, 12);
  ellipse(x+57, y+656, 34, 12);
  fill(#f9e88c);
  ellipse(x+76, y+656, 24, 17);
  fill(#FAF1E8);
  ellipse(x+87, y+666, 24, 23);
  ellipse(x+69, y+666, 23, 24);
  fill(#308934);
  ellipse(x+76, y+711, 3, 72);
  ellipse(x+68, y+697, 23, 10);
  ellipse(x+86, y+717, 22, 10);
  
  //flowerback
  fill(#f3e8e0);
  ellipse(x+589, y+443, 12, 20);
  ellipse(x+583, y+444, 12, 20);
  fill(#FAF1E8);
  ellipse(x+598, y+453, 16, 9);
  ellipse(x+572, y+452, 16, 9);
  fill(#f9e88c);
  ellipse(x+587, y+453, 14, 8);
  fill(#FAF1E8);
  ellipse(x+591, y+458, 15, 13);
  ellipse(x+579, y+459, 15, 13);
  fill(#308934);
  ellipse(x+586, y+470, 1, 21);
  ellipse(x+580, y+471, 13, 4);
  
  //flower2
  fill(#573313);
  ellipse(x+620,y+445,2,11);
  fill(#EDC4BF);
  ellipse(x+616,y+419,18,23);
  ellipse(x+632,y+418,20,15);
  ellipse(x+631,y+432,18,19);
  ellipse(x+614,y+432,15,22);
  fill(#dda87e);
  ellipse(x+621,y+425,-17,7);
  
  //grawadd
  fill(#308934);
  ellipse(x+557, y+450, 2, 28);
  ellipse(x+551, y+447, 1, 21);
  ellipse(x+25, y+744, 1, 28);
  ellipse(x+68, y+736, 1, 21);
  ellipse(x+62, y+746, 2, 25);
  ellipse(x+57, y+724, 1, 25);
  popStyle();
  
  //bee
  fill(#bce5f4);
  ellipse(x+699, y+371, 8, 16);
  fill(#bce5f4);
  ellipse(x+699, y+371, 8, 16);
  fill(#F5DB59);
  ellipse(x+705, y+383, 28, 16);
  ellipse(x+687, y+383, 11, 13);
  fill(#bd9246);
  rect(x+704, y+376, 4, 15);
  rect(x+710, y+376, 3, 14);
  fill(#E5F8FF);
  ellipse(x+706, y+371, 8, 16);
  fill(#bd9246);
  ellipse(x+686, y+381, 3, 3);
  
  //change color tone
  if (day){
    fill(5, 0);
    rect(0, 0, 1100, 800);
  } else {
    fill(#6F73B4, 50);
    rect(0, 0, 1100, 800);
  }
}
