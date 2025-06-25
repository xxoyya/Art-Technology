// int numFrames = 500;
// make your character image
void setup(){
  size(400, 500);
  noStroke();
}



void draw(){
  background(234, 208, 214);
  
  // writing your name 
  PFont myFont = createFont("Georgia", 32);
  textFont(myFont);
  fill(#000000);
  textAlign(LEFT, CENTER);  
  text("Kim Sohyeon", 0, 15);
  
  ellipseMode(CENTER);
  
  //hair
  fill(mouseX+3, mouseY+3, 32);
  ellipse(200, 120, 170, 170);
  square(115, 120, 170);
  
  //face
  fill(227, 205, 174);
  ellipse(200, 125, 155, 155);
  fill(247, 230, 205);
  ellipse(200, 120, 150, 150);
  
  //neck
  fill(247, 230, 205);
  square(175, 180, 50);
  
  //arm
  fill(221, 160, 229);
  triangle(90, 280, 125, 230, 160, 280); 
  triangle(240, 280, 275, 230, 310, 280);
  fill(247, 230, 205);
  rect(90, 280, 35, 90);
  rect(275, 280, 35, 90);
  
  //body
  fill(204, 128, 215);
  rect(123, 234, 154, 174, 30);
  fill(221, 160, 229);
  rect(125, 230, 150, 170, 25);
  ellipse(200, 230, 150, 40);
  
  //leg
  // fill(174, 174, 204);
  // square(mouseX-75, mouseY+130, 150);
  
  //hand
  fill(247, 230, 205);
  ellipse(108, 370, 50, 40);
  ellipse(293, 370, 50, 40);
  
  //eye
  fill(0);
  ellipse(170, 110, 20, 20);
  ellipse(230, 110, 20, 20);
  
  fill(227);
  ellipse(173, 108, 5, 5);
  ellipse(233, 108, 5, 5);
  
  fill(150);
  ellipse(167, 113, 8, 5);
  fill(0);
  ellipse(169, 106, 9, 5);
  
  fill(150);
  ellipse(228, 113, 8, 5);
  fill(0);
  ellipse(231, 106, 9, 5);
  
  //eyebrow
  if(mousePressed){
    //left
    pushMatrix();
    fill(59, 49, 32);
    translate(100, 150);
    rotate(radians(30));
    rect(18, -92, 30, 3);
    popMatrix();
    //right
    pushMatrix();
    fill(59, 49, 32);
    translate(100, 150);
    rotate(radians(-30));
    rect(130, 10, 30, 3);
    popMatrix();
    
  } else{
    fill(59, 49, 32);
    rect(157, 90, 25, 3);
    rect(218, 90, 25, 3);
  }
  
  //nose
  fill(223, 194, 157);
  triangle(190, 140, 200, 120, 210, 140);
  
 //mouse
 if(mousePressed){
   pushMatrix();
   fill(224, 163, 200);
   translate(200, 200);
   rotate(radians(-180));
   arc(5, 30, 30, 30, 0, PI+QUARTER_PI, CHORD);
   popMatrix();
 } else {
   fill(224, 163, 200);
   arc(200, 160, 30, 30, 0, PI+QUARTER_PI, CHORD);
 }
 
 //cheek
 fill(248, 182, 202);
 ellipse(150, 140, 30, 10);
 ellipse(250, 140, 30, 10);
 
 //heartleft
 pushMatrix();
 fill(50, mouseY+5, mouseX+3);
 translate(200, 250);
 rotate(radians(50));
 ellipse(40, 50, 80, 50);
 popMatrix();
 
 //heartright
 pushMatrix();
 fill(50, mouseY+5, mouseX+3);
 translate(200, 250);
 rotate(radians(-50));
 ellipse(-40, 50, 80, 50);
 popMatrix();
 
 
//  if(frameCount<=numFrames)
//  {
//    saveFrame("fr###.gif");
//  }
//  if(frameCount==numFrames)
//  {
//    println("All frames have been saved");
//  }
 
}
