/*drawPattern() calls itself, creating a branching effect. 
For every diagonal shape, a smaller diagonal shape is drawn in 3D and rotates. 
(Bongkyung Shin)*/
float a=0;
void setup()
{
  size(500, 500, P3D);
}

void draw()
{
  /*if(frameCount<500){
    saveFrame("img#####.jpg"); 
  }*/
  
  background(255);
  a+=0.0025;
  pushMatrix();
  translate(width/2, height/2);
  drawPattern(a, 1);
  popMatrix();
}

void drawPattern(float a, float i) {
    noStroke();
    fill(255, 75, 75, 100);
    
    // 기본 삼각형 생성
    beginShape(TRIANGLES);
    vertex(-20*i, -20*i, 0);
    vertex(20*i, -20*i, 0);
    vertex(0, 20*i, 0);
    endShape(CLOSE);

    if (i < 12) {
        rotateY(a);
        rotateZ(a);
        rotateX(a);
        drawPattern(a, i + 1); // 재귀적으로 패턴 생성
    }
}
