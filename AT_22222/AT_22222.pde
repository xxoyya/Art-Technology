int []counts = {0,0,0,0,0,0,0,0,0};
float [] rectY = new float[9];

void setup(){
  size(800, 800);
  for(int i = 0 ; i < 9 ; i++){
    rectY[i] = i*100;
  }
}

void draw(){
  background(255);
  for(int i = 0 ; i < 9 ; i++){
    if(counts[i]<5){

      fill(255/(i+1));
      rect(0,rectY[i],800,100);
  
      //print
      textSize(24);
      fill(0);
      text(counts[i], 400, (i*100)+50); 
    }
  
    else{
      fill(255,0,0);
      rect(0,rectY[i],800,100);
    }
  
  }
}//end of draw

void mousePressed(){
   for(int i = 0 ; i < 9 ; i++){
    if(rectY[i]<mouseY && mouseY<rectY[i+1]) counts[i] ++;
  }
}
