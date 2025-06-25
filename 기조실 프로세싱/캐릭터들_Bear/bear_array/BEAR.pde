class BEAR {
  float x, y, w, h;
  
  //BEAR constructor
  BEAR(float tempX, float tempY, float tempW, float tempH){
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
  }
  
  //Move BEAR
  void jiggle(){
    x = x + random(-5, 5);
    y = y + random(-5, 5);
    
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }
  
  //Display BEAR
  void display() {
    ellipseMode(CENTER);
    noStroke();
    
    //ear
    fill(113, 89, 88);
    ellipse(x-70, y-70, 80, 80);
    ellipse(x+70, y-70, 80, 80);
    
    fill(216, 178, 138);
    ellipse(x-70, y-70, 50, 50);
    ellipse(x+70, y-70, 50, 50);
    
    fill(207, 163, 115);
    ellipse(x-65, y-70, 40, 50);
    ellipse(x+65, y-70, 40, 50);
    
    //face
    fill(90, 72, 71);
    ellipse(x, y+5, 205, 207);
    fill(113, 89, 88);
    ellipse(x, y, 200, 200);
    
    //eye
    fill(0);
    ellipse(x-40, y-20, 25, 25);
    ellipse(x+40, y-20, 25, 25);
    
    fill(227);
    ellipse(x-35, y-25, 5, 5);
    ellipse(x+45, y-25, 5, 5);
    
    fill(150);
    ellipse(x-40, y-15, 8, 5);
    fill(0);
    ellipse(x-39, y-17, 9, 5);
    
    fill(150);
    ellipse(x+40, y-15, 8, 5);
    fill(0);
    ellipse(x+41, y-17, 9, 5);
    
    //mouse
    fill(206, 168, 127);
    ellipse(x, y+45, 75, 65);
    
    fill(216, 178, 138);
    ellipse(x, y+40, 70, 60);
    
    fill(198, 136, 134);
    arc(x, y+50, 40, 30, 0, PI+QUARTER_PI, CHORD);
    
    fill(185, 108, 105);
    ellipse(x, y+58, 30, 13);
    
    //nose
    fill(85, 72, 71);
    ellipse(x, y+23, 33, 33);
    
    fill(95, 86, 85);
    ellipse(x, y+20, 30, 30);
  }
}
