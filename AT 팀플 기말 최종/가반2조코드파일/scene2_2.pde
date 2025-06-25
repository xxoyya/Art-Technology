void chasingzara(){
  if(cut2zaraX<=200){
    cut2zaraX += 20;
  }else if(cut2zaraX<=400){
    cut2zaraX+=15;
  }else if(cut2zaraX<=600){
    cut2zaraX+=10;
  }else if(cut2zaraX<=700){
    cut2zaraX+=5;
  }
  
  if(millis() - prevTime < 9000){
    image(zarawalk[imageIndex],cut2zaraX,350,300,300);
    imageIndex = (imageIndex + 1) % zarawalk.length;
    frameRate(7);
  }else{
    image(zarawalk[2],700,350,300,300);
  }
}

void bunnyhop(){
  image(bunnyhop,cut2bunnyX,cut2bunnyY,350,350);
  
  cut2bunnyY += speed;
  cut2bunnyX += 40;
  
  if(cut2bunnyY>350){
    speed *= -1;
    cut2bunnyY = 350;
  }else if (cut2bunnyY<250){
    speed *= -1;
    cut2bunnyY = 250;
  }
}
