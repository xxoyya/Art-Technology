int timescene1_4;

int maxTurtle_s = 3;
//int TurtleSIndex = 0;

PImage talkback, prison, turtle, king, jara, jara2, prisonout, rabbit_scream0, king_unhealthy;
PImage comingup, ground, turtle2, rabbitrun;
PImage [] Turtle_s = new PImage[maxTurtle_s];
PImage palace_2;

float a_scene4 = 600;   
float b_scene4 = 400;   
float gravity = 1;
float speed_scene4 = 0;
int y = -85, ydir = 10;

int currentAudioIndex2 = 12;

void scene1_4(){

  pushStyle();
  textAlign(CENTER, CENTER);
  textFont(scene2_sub_font);
  noStroke();
  fill(#000000, 70);
  rectMode(CENTER);
  
  // 용왕 토끼 대화
  if( millis() - timescene1_4 + 5000>=5000 && millis() - timescene1_4 + 5000 <=25000){
   if (currentAudioIndex2 == 12) {
      playAudio(currentAudioIndex2);
      currentAudioIndex2++;
   }
  image(palace_2, 0, 0, 1280, 720);
  image(rabbit_scream1, 135, 35, 470, 470);
  image(shinha1, 60, 140, 135, 240);
  image(shinha2, 525, 140, 135, 240);
  image(prison, 215, -47, 280, 420);
  image(rabbit_scream2, 135, 35, 470, 470);
  image(turtle, 210, 400, 220, 400);
  image(king_unhealthy, 830, 50, 390, 390);
  
    // 토끼 대사
    if( millis() - timescene1_4 + 5000>=5000 && millis() - timescene1_4 + 5000 <=6000){
      rect(640,640,500,60,28);
      fill(255);
      text("Listen to me for a second.", text_x, text_y);
    }
    if( millis() - timescene1_4 + 5000>=6000 && millis() - timescene1_4 + 5000 <=8000){
      rect(640,640,800,60,28);
      fill(255);
      text("There were many people like you", text_x, text_y);
    }
    if( millis() - timescene1_4 + 5000>=8000 && millis() - timescene1_4 + 5000 <=10000){
      rect(640,640,800,60,28);
      fill(255);
      text("who tried to use my liver as medicine.", text_x, text_y);
    }
    if( millis() - timescene1_4 + 5000>=10000 && millis() - timescene1_4 + 5000 <=13000){
      rect(640,640,900,60,28);
      fill(255);
      text("So I always give my liver on the full moon,", text_x, text_y);
    }
    if( millis() - timescene1_4 + 5000>=13000 && millis() - timescene1_4 + 5000 <=16000){
      rect(640,640,930,60,28);
      fill(255);
      text("and then it regenerates in my body the next day.", text_x, text_y);
    }
    if( millis() - timescene1_4 + 5000>=16000 && millis() - timescene1_4 + 5000 <=18000){
      rect(640,640,700,60,28);
      fill(255);
      text("I do not have my liver right now!", text_x, text_y);
    }
    if( millis() - timescene1_4 + 5000>=18000 && millis() - timescene1_4 + 5000 <=20000){
      rect(640,640,410,60,28);
      fill(255);
      text("See it with your eyes!", text_x, text_y);
    }
    if( millis() - timescene1_4 + 5000>=20000 && millis() - timescene1_4 + 5000 <=25000){
      rect(640,640,800,60,28);
      fill(255);
      text("If I die today...You will never have my liver", text_x, text_y);
    }
  }
  
  // 용왕 토끼 대화
  if( millis() - timescene1_4 + 5000>=26000 && millis() - timescene1_4 + 5000 <=42000){
    image(king, 0, 0, 1280, 720);
    
    // 용왕 대화
    if( millis() - timescene1_4 + 5000>=26000 && millis() - timescene1_4 + 5000 <=28000){
      rect(640,640,500,60,28);
      fill(255);
      text("What you say is true...", text_x, text_y);
    }
    if( millis() - timescene1_4 + 5000>=28000 && millis() - timescene1_4 + 5000 <=32000){
      rect(640,640,740,60,28);
      fill(255);
      text("My life depends on it, so be careful,", text_x, text_y);
    }
    if( millis() - timescene1_4 + 5000>=32000 && millis() - timescene1_4 + 5000 <=37000){
      rect(640,640,1020,60,28);
      fill(255);
      text("go up and take that rabbit to the land immediately.", text_x, text_y);
    }
    if( millis() - timescene1_4 + 5000>=37000 && millis() - timescene1_4 + 5000 <=42000){
      rect(640,640,980,60,28);
      fill(255);
      text("If you can't find your liver, you are not worth it!!", text_x, text_y);
    }
     if (currentAudioIndex2 == 13) {
      playAudio(currentAudioIndex2);
      currentAudioIndex2++;
   }
  }
  
  // 자라 대사
   if( millis() - timescene1_4 + 5000>=43000 && millis() - timescene1_4 + 5000 <50000){
     if (currentAudioIndex2 == 14) {
      playAudio(currentAudioIndex2);
      currentAudioIndex2++;
   }
     image(jara, 0, 0, 1280, 720);
      
     if( millis() - timescene1_4 + 5000>=43000 && millis() - timescene1_4 + 5000 <=46000){
       rect(640,640,500,60,28);
       fill(255);
       text("Believe me, Dragon King.", text_x, text_y);
     }
     if( millis() - timescene1_4 + 5000>=46000 && millis() - timescene1_4 + 5000 <=50000){
       rect(640,640,910,60,28);
       fill(255);
       text("If I disappoint you, I will sacrifice my life for you.", text_x, text_y);
     }
   }
   
   // 자라 대사
   if( millis() - timescene1_4 + 5000>=50000 && millis() - timescene1_4 + 5000 <54000){
     image(jara2, -60, -90, 1440, 810);
     if( millis() - timescene1_4 + 5000>=50000 && millis() - timescene1_4 + 5000 <=52000){
       rect(640,640,450,60,28);
       fill(255);
       text("Release the rabbit.", text_x, text_y);
     }
     if( millis() - timescene1_4 + 5000>=52000 && millis() - timescene1_4 + 5000 <=54000){
       rect(640,640,550,60,28);
       fill(255);
       text("I will go with the rabbit.", text_x, text_y);
     }
   }
   
   // 감옥 갇힌 토끼
   if( millis() - timescene1_4 + 5000>=54000 && millis() - timescene1_4 + 5000 <57000){
     image(palace_2, 0, 0, 1920, 1080);
     image(rabbit_scream1, 207, 50, 705, 705);
     image(shinha1, 80, 210, 202, 360);
     image(shinha2, 790, 210, 202, 360);
     image(prison, 317, y + 13, 440, 630); // 스페이스바 누르면 감옥 올라감
     image(rabbit_scream2, 207, 50, 705, 705);
     if (y <= -300) {
       image(rabbit_scream0, 207, 50, 705, 705);
       image(prison, 317, y + 13, 440, 630);
     }
   }
   
   // 자라 토끼 업고 올라감
   if( millis() - timescene1_4 + 5000>=57000 && millis() - timescene1_4 + 5000 <63000){
     image(underthesea, 0, 0, 1280, 720);
     frameRate(10);
     image(Turtle_s[TurtleSIndex], mouseX-200, mouseY-200, 400, 400);
     TurtleSIndex = (TurtleSIndex + 1 ) % Turtle_s.length;
   }
   
   // 토끼 도망
   if( millis() - timescene1_4 + 5000>=63000 && millis() - timescene1_4 + 5000 <68000){
     image(ground, 0, 0, 1280, 720);
     image(turtle2, 600, 400, 190, 140);
     image(rabbitrun, a_scene4, b_scene4, 450, 400);
     a_scene4 += 10;
     b_scene4 += 5;
   }
   
   
   if (millis() - timescene1_4 + 5000 >= 68000 /*&& a_scene4 >= 3000*/) {
     holeScene = 4;
   }
   popStyle();
}
//   void keyPressed() {
//    if (key == ' ') { // 스페이스 바를 눌렀을 때
//    y = y-ydir;
//  }
//}
