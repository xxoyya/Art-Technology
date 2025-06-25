int a, b, c, d, e, adir, bdir, cdir, ddir, edir, diam;
int aHit, bHit, cHit, dHit, eHit, maxHit;

void setup(){
  size(600, 600);
  noStroke();
  textSize(50);
  
  a = 300;
  b = 400;
  c = 300;
  d = 300;
  e = 200;
  
  adir = 3;
  bdir = 3;
  cdir = 3;
  ddir = 3;
  edir = 3;
  diam = 100;
  
  aHit = 0;
  bHit = 0;
  cHit = 0;
  dHit = 0;
  eHit = 0;
  maxHit = 6;
  
  
}

void draw (){
  background(255);
  
  //ball drawing
  fill(255, 0, 0);
  circle(a, 100, diam);
  fill(0);
  text(aHit, a, 100);
  a += adir;
  
  fill(255, 255, 0);
  circle(b, 210, diam);
  fill(0);
  text(bHit, b, 210);
  b += bdir;
  
  fill(0, 255, 0);
  circle(c, 320, diam);
  fill(0);
  text(cHit, c, 320);
  c += cdir;
  
  fill(0, 0, 255);
  circle(d, 430, diam);
  fill(0);
  text(dHit, d, 430);
  d += ddir;
  
  fill(0);
  circle(e, 540, diam);
  fill(255);
  text(eHit, e, 540);
  e += edir;
  
  //ball moving
  if(a + diam/2 > width || a - diam/2 < 0){
    adir *= -1;
    aHit ++;
  }
  
  if(b + diam/2 > width || b - diam/2 < 0){
    bdir *= -1;
    bHit ++;
  }
  
  if(c + diam/2 > width || c - diam/2 < 0){
    cdir *= -1;
    cHit ++;
  }
  
  if(d + diam/2 > width || d - diam/2 < 0){
    ddir *= -1;
    dHit ++;
  }
  
  if(e + diam/2 > width || e - diam/2 < 0){
    edir *= -1;
    eHit ++;
  }
  
  if (aHit >= maxHit){
    this.a = -1000;
  }
    if (bHit >= maxHit){
    this.b = -1000;
  }
    if (cHit >= maxHit){
    this.c = -1000;
  }
    if (dHit >= maxHit){
    this.d = -1000;
  }
    if (eHit >= maxHit){
    this.e = -1000;
  }

}
