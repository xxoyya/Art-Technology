float [] circleX = new float[5];
float [] circleY = new float[5];
int[] counts = {0,0,0,0,0};
int [] direction = {1, -1, 1, -1, 1};//벽에 다섯 번 부딪히면 사라지니까 이렇게 array 해야 공마다 다르게 ㄱ
color [] colors = {#ff0000, #0000ff, #00ff00, #00ffff, #000000};

void setup(){
  size(500,500);
//  circleX = new float[5];
//  circleY = new float[5];
  
  for(int i = 0 ; i<5 ; i++){
    circleX[i] = random(25, 500-15);
    circleY[i] = random(25, 500-15);
  }
}

void draw(){
  background(255);
  for(int i = 0; i<5; i++){
    if(counts[i]<5){
    fill(colors[i]);
    circle(circleX[i], circleY[i], 50);
    }
    textSize(24);
    fill(255);
    text(counts[i], circleX[i], circleY[i]);
  }
  for(int i = 0; i<5; i++){ // 같은 draw 긴하지만 for 나눠서 씀 !!!!!!!!!! if문 나눈고 .. 웅 .. ㅠㅠ 어려워
    if((circleX[i]-15<0) || (circleX[i] +15 > 500)){
      direction[i] *= -1;
      counts[i]++; //이게 중요하ㄴ[ㅔ
    }
    else{
    }
    circleX[i] += direction[i];

  }
}
