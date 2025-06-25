 // make your character image
void setup(){
  size(400, 500);
  noStroke();
}



void draw(){
  // writing your name 
  PFont myFont = createFont("Georgia", 32);
  textFont(myFont);
  fill(#000000);
  textAlign(LEFT, CENTER);  
  text("Kim Sohyeon", 0, 15);
  
  background(234, 208, 214);
  
  ellipseMode(CENTER);
  
  //hair
  fill(59, 49, 32);
  ellipse(mouseX, mouseY-130, 170, 170);
  square(mouseX-85, mouseY-130, 170);
  
  //face
  fill(227, 205, 174);
  ellipse(mouseX, mouseY-125, 155, 155);
  fill(247, 230, 205);
  ellipse(mouseX, mouseY-130, 150, 150);
  
  //neck
  fill(247, 230, 205);
  square(mouseX-25, mouseY-70, 50);
  
  //body
  fill(221, 160, 229);
  rect(mouseX-75, mouseY-20, 150, 170, 25);
  ellipse(mouseX, mouseY-20, 150, 40);
  
  //arm
  fill(221, 160, 229);
  triangle(mouseX-110, mouseY+30, mouseX-75, mouseY-20, mouseX-40, mouseY+30); 
  triangle(mouseX+40, mouseY+30, mouseX+75, mouseY-20, mouseX+110, mouseY+30);
  fill(247, 230, 205);
  rect(mouseX-110, mouseY+30, 35, 90);
  rect(mouseX+75, mouseY+30, 35, 90);
  
  //leg
  // fill(174, 174, 204);
  // square(mouseX-75, mouseY+130, 150);
  
  //hand
  fill(247, 230, 205);
  ellipse(mouseX-92, mouseY+120, 50, 40);
  ellipse(mouseX+93, mouseY+120, 50, 40);
  
  //eye
  fill(0);
  ellipse(mouseX-30, mouseY-140, 20, 20);
  ellipse(mouseX+30, mouseY-140, 20, 20);
  
  fill(227);
  ellipse(mouseX-27, mouseY-142, 5, 5);
  ellipse(mouseX+33, mouseY-142, 5, 5);
  
  fill(150);
  ellipse(mouseX-33, mouseY-137, 8, 5);
  fill(0);
  ellipse(mouseX-31, mouseY-144, 9, 5);
  
  fill(150);
  ellipse(mouseX+28, mouseY-137, 8, 5);
  fill(0);
  ellipse(mouseX+31, mouseY-144, 9, 5);
  
  //eyebrow
  fill(59, 49, 32);
  rect(mouseX-43, mouseY-160, 25, 3);
  rect(mouseX+18, mouseY-160, 25, 3);
  
  //nose
  fill(223, 194, 157);
  triangle(mouseX-10, mouseY-110, mouseX, mouseY-130, mouseX+10, mouseY-110);
  
 //mouse
 fill(224, 163, 200);
 arc(mouseX, mouseY-90, 30, 30, 0, PI+QUARTER_PI, CHORD);
 
 //cheek
 fill(248, 182, 202);
 ellipse(mouseX-50, mouseY-110, 30, 10);
 ellipse(mouseX+50, mouseY-110, 30, 10);
 
}
