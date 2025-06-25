int screenSoonjo = 0;   // Screens: | 0 = book  |   1 = Sea  |  2 = Yongung  |  3 = JaraMove  |
int currentAudioIndex = 0;

PImage bookSoonjo, BGSea1, BGSea2, BGSea3, zara_normal,zara_righthead, yongwang_normal, yongwang_sick, shinha1, shinha2, shinha3, shinha4, zara_swimming, zara_swimming2, zara_swimming3, zara_swimmingr, zara_swimming2r, zara_swimming3r, fishSoonjo, graveyard;



int screenTimeSoonjo =0;
int sceneClickSoonjo = 0;
float bookSizeSoonjo=1;
int bookSoonjoX,bookSoonjoY,rectSoonjoY,seaX,seaY, zara_timescene1_1;
float seaSize=1;
int BGSeaScreen=0;
float zaraSizeSoonjo;
int shinhaXscene1_1=100;
int zaraXscene1_1 =0;
int fishXscene1_1=width/2, fishYscene1_1=height/2+300;
int fishExistscene1_1 =0;
PFont zaraDaesaSoonjo;


void scene1_1(){
  
  if (screenSoonjo == 0){
    bookSoonjoFunction();
    chooseScene();
  }
  if (screenSoonjo == 1){
    jaraMoveSoonjo();
  }
  if (screenSoonjo == 2){
    yongungSoonjo();
    bgm1_1.play();
  }
  if (screenSoonjo ==3){
    zaraMoveSoonjoBefore(); 
  }
  if (screenSoonjo ==4){
    zaraMoveSoonjoAfter();
    bgm1_1.close();
  }
}

void bookSoonjoFunction(){
  pushStyle();
  image(bookSoonjo,bookSoonjoX,bookSoonjoY,1280*bookSizeSoonjo,720*bookSizeSoonjo);
 
  
  //Choose the ending(IMPORTANT)
  
  if (mousePressed){
    sceneClickSoonjo = 1;
  }
  if (sceneClickSoonjo==1 && bookSizeSoonjo <= 10){
    bookSizeSoonjo+=0.3; 
    bookSoonjoX-=250;
    bookSoonjoY-=80;
  }
  if (bookSizeSoonjo>9.8){
    screenSoonjo = 1;
  }
  popStyle();
}


void jaraMoveSoonjo(){
  pushStyle();
  image(BGSea1,seaX,seaY,1280*seaSize,720*seaSize);
  noStroke();
  fill(#000000, 70);
  rectMode(CENTER);
  rect(640,640,1200,60,28);
  textAlign(CENTER, CENTER);
  
  fill(255);
  textFont(scene2_sub_font);
  text("Once upon a time, there was a dragon palace deep in the sea", 640, 640);
  stroke(1);
  // 나레이션 음성 (1) 
   if (currentAudioIndex == 0) {
      playAudio(currentAudioIndex);
      currentAudioIndex++;
    }
  if (mouseX <width/2+80 && mouseX > width/2 && mouseY >height/2+100 && mouseY < height/2+170 && mousePressed){
    sceneClickSoonjo=2;
  }
  if (sceneClickSoonjo==2 && seaSize <= 10){
    seaSize+=0.4;
    seaX-=267;
    seaY-=200;
  }
  if (seaSize > 9.8){
    screenSoonjo=2; 
  }
  popStyle();
}

void yongungSoonjo(){
  pushStyle();
  
  image(BGSea2,0,0); 
  image(yongwang_sick,width/2-100,height/2-200,300,300);
  
  noStroke();
  fill(#000000, 70);
  rectMode(CENTER);
  rect(640,640,970,60,28);
  textAlign(CENTER, CENTER);
  fill(255);
  textFont(scene2_sub_font);
  text("But one day, the Dragon King became seriously ill", 640, 640);
  stroke(1);
  
  screenTimeSoonjo+=1;
  if (screenTimeSoonjo>= 200 && screenTimeSoonjo <= 400){
    image(BGSea2,0,0); 
    image(yongwang_normal,width/2-120,height/2-140,300,300); 
    noStroke();
    fill(#000000, 70);
    rectMode(CENTER);
    rect(640,640,500,60,28);
    textAlign(CENTER, CENTER);
    fill(255);
    textFont(scene2_sub_font);
    text("He called his servants", 640, 640);
    stroke(1); 
      
  }
  if (screenTimeSoonjo>= 400 && screenTimeSoonjo <= 700){
    image(BGSea2,0,0); 
    image(yongwang_normal,width/2-120,height/2-140,300,300); 
    noStroke();
    fill(#000000, 70);
    rectMode(CENTER);
    rect(640,640,970,60,28);
    textAlign(CENTER, CENTER);
    fill(255);
    textFont(scene2_sub_font);
    text("saying that he could live by eating a rabbit's liver", 640, 640); // 나레이션 끝 
    stroke(1); 
      
  }
  if (screenTimeSoonjo >= 700 && screenTimeSoonjo <= 1000){
    image(BGSea3,0,0);
    image(shinha1,100,200,90,160);
    image(shinha2,300,200,90,160);
    image(shinha3,300,400,90,160);
    image(shinha4,100,400,90,160);
  }
  if (screenTimeSoonjo >=1000 && screenTimeSoonjo <=1300){
    image(BGSea2,0,0); 
    image(yongwang_normal,width/2-120,height/2-140,300,300); 
    
    noStroke();
    fill(#000000, 70);
    rectMode(CENTER);
    rect(640,640,500,60,28);
    textAlign(CENTER, CENTER);
    fill(255);
    textFont(scene2_sub_font);
    text("My life depends on it.", 640, 640); // 용왕 
    stroke(1);
    //  음성 (2)
   if (currentAudioIndex == 1) {
      playAudio(currentAudioIndex);
      currentAudioIndex++;
    }
  }
  if (screenTimeSoonjo >=1300 && screenTimeSoonjo <=1600){
    image(BGSea2,0,0); 
    image(yongwang_normal,width/2-120,height/2-140,300,300); 
    noStroke();
    fill(#000000, 70);
    rectMode(CENTER);
    rect(640,640,1200,60,28);
    textAlign(CENTER, CENTER);
    fill(255);
    textFont(scene2_sub_font);
    text("I will give my great reward to those who bring the rabbit's liver.", 640, 640);
    stroke(1);
  }
  if (screenTimeSoonjo >= 1600){
    image(BGSea3,0,0);
    image(zara_righthead,zaraXscene1_1,200,135,240);
    image(shinha2,shinhaXscene1_1,200,90,160);
    image(shinha3,shinhaXscene1_1,400,90,160);
    shinhaXscene1_1-=10;
    if (zaraXscene1_1 <400){
      zaraXscene1_1 +=10; 
    } 
    noStroke();
    fill(#000000, 70);
    rectMode(CENTER);
    rect(640,640,1130,60,28);
    textAlign(CENTER, CENTER);
    fill(255);
    textFont(scene2_sub_font);
    text("I will bring this rabbit liver for the Dragon King's long life", 640, 640);
    stroke(1);
    //  음성 (3)
   if (currentAudioIndex == 2) {
      playAudio(currentAudioIndex);
      currentAudioIndex = 15; // 여기 잠깐 넘기겠움
    }
  }
  if (screenTimeSoonjo >= 1900){
    rectSoonjoY+=5;
    fill(0);
    rect(640,rectSoonjoY-720,1280,720);
    if (rectSoonjoY == 1080){
      screenSoonjo=3; 
    }
  }
  popStyle();
}

void zaraMoveSoonjoBefore(){
  pushStyle();  

  fill(0);
  rect(0,0,1280,720);
  fill(#5AFF66);
  rect(650,500,30,30);
  if (mouseX >=650 && mouseX<=690 && mouseY >= 500 && mouseY <=530){
    screenSoonjo=4; 
  }
  popStyle();  
  
}

void zaraMoveSoonjoAfter(){
  pushStyle();  
  image(BGSea1,0,0);
  fishXscene1_1+=5;
  if (fishXscene1_1 >width){
    fishXscene1_1=-10;
  }
  
  if (mouseX>fishXscene1_1 && mouseX<fishXscene1_1+50 && mouseY > fishYscene1_1-30 && mouseY < fishYscene1_1+60 && zaraSizeSoonjo >=200){
    fishExistscene1_1 =1;
  }
  if (fishExistscene1_1 ==0){
    image(fishSoonjo,fishXscene1_1,fishYscene1_1,100,100);
  }
  
  zaraSizeSoonjo = dist(mouseX,mouseY,660,510);
  if (zaraSizeSoonjo <=100){
    zaraSizeSoonjo =100;
  }
  zara_timescene1_1+=1;
  if(mouseX>=660){
    if (zara_timescene1_1>=0 && zara_timescene1_1<=10){
      image(zara_swimming,mouseX-zaraSizeSoonjo/2,mouseY-zaraSizeSoonjo/2,zaraSizeSoonjo,zaraSizeSoonjo);
    }
    if (zara_timescene1_1>=10 && zara_timescene1_1<=20){
      image(zara_swimming2,mouseX-zaraSizeSoonjo/2,mouseY-zaraSizeSoonjo/2,zaraSizeSoonjo,zaraSizeSoonjo);
    }
    if (zara_timescene1_1>=20 && zara_timescene1_1<=30){
      image(zara_swimming3,mouseX-zaraSizeSoonjo/2,mouseY-zaraSizeSoonjo/2,zaraSizeSoonjo,zaraSizeSoonjo);
    }
    if (zara_timescene1_1>=30 && zara_timescene1_1<=40){
      image(zara_swimming2,mouseX-zaraSizeSoonjo/2,mouseY-zaraSizeSoonjo/2,zaraSizeSoonjo,zaraSizeSoonjo);
    }
  }
  else{
    if (zara_timescene1_1>=0 && zara_timescene1_1<=10){
      image(zara_swimmingr,mouseX-zaraSizeSoonjo/2,mouseY-zaraSizeSoonjo/2,zaraSizeSoonjo,zaraSizeSoonjo);
    }
    if (zara_timescene1_1>=10 && zara_timescene1_1<=20){
      image(zara_swimming3r,mouseX-zaraSizeSoonjo/2,mouseY-zaraSizeSoonjo/2,zaraSizeSoonjo,zaraSizeSoonjo);
    }
    if (zara_timescene1_1>=20 && zara_timescene1_1<=30){
      image(zara_swimming2r,mouseX-zaraSizeSoonjo/2,mouseY-zaraSizeSoonjo/2,zaraSizeSoonjo,zaraSizeSoonjo);
    }
    if (zara_timescene1_1>=30 && zara_timescene1_1<=40){
      image(zara_swimming3r,mouseX-zaraSizeSoonjo/2,mouseY-zaraSizeSoonjo/2,zaraSizeSoonjo,zaraSizeSoonjo);
    }
  }
    
    
   if (zara_timescene1_1>=40){
    zara_timescene1_1 = 0; 
  }
  if (mouseY<=20){
    fill(0);
    rect(0,0,1280,720);
    screenSoonjo=5;
    holeScene = 1;
    timescene1_2 = millis();
  }
  
  
  popStyle();  
  
}
