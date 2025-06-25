int timescene1_2;

int mode = 0;
int maxRabbits = 2;
int RabbitIndex = 0;
int maxRabbitsL = 2;
int RabbitLIndex = 0;
int maxTurtles = 2;
int TurtleIndex = 0;
int maxTurtles_s = 3;
int TurtleSIndex = 0;
int maxTurtles_W = 3;
int TurtleWIndex = 0;

int a = 0;
int b = 300;
int c = 0;
int d = 300;
int e = 50;
int f = 350;
int text_x = 640;
int text_y = 640;

PImage sand1;
PImage sand2;
PImage sand3;
PImage underthesea;
PImage turtle0;
PImage turtle1;
PImage turtleUP;
PImage turtleDOWN;
PImage turtleSur1;
PImage turtleSur2;
PImage turtleR;
PImage rabbitL0;
PImage rabbitL1;
PImage rabbit;
PImage rabbit_ok0;
PImage rabbit_ok1;
PImage rabbit_sit;
PImage rabbit_sur0;
PImage rabbit_sur1;
PImage rabbit3;


PImage[] Rabbits = new PImage[maxRabbits];
PImage[] RabbitsL = new PImage[maxRabbitsL];
PImage[] Turtles = new PImage[maxTurtles];
PImage[] Turtles_s = new PImage[maxTurtles_s];
PImage[] Turtles_W = new PImage[maxTurtles_W];

int currentAudioIndex1 = 3;

void scene1_2() {
  
  pushStyle();
  textAlign(CENTER, CENTER);
  textFont(scene2_sub_font);
  
  noStroke();
  fill(#000000, 70);
  rectMode(CENTER);
  
  
  // 모래 위 자라
  if (millis() - timescene1_2 + 5000 >= 5000 && millis() - timescene1_2 + 5000 <= 8000 ) {
    
    if (currentAudioIndex1 == 3) {
      playAudio(currentAudioIndex1);
      currentAudioIndex1 ++;
    }
    image(sand1, 0, 0, 1280, 720);
    image(turtle1, 565, 300, 150, 300);
    rect(640,640,750,60,28);
    fill(255);
    text("Phew... I just need to find the rabbit", text_x, text_y);
  }


  // 자라 두리번 두리번
  if (millis() - timescene1_2 + 5000 >= 8000 && millis() - timescene1_2 + 5000 <= 11000 ) {
    image(sand1, 0, 0, 1280, 720);
    frameRate(2);
    image(Turtles[TurtleIndex], 565, 300, 150, 300);
    TurtleIndex = (TurtleIndex + 1) % Turtles.length;
  }


  // 토끼 산책 콧노래
  if (millis() - timescene1_2 + 5000 >= 11000 && millis() - timescene1_2 + 5000 <= 13000 ) {
    image(sand2, 0, 0, 1280, 720);
    frameRate(5);
    image(Rabbits[RabbitIndex], a, b, 500, 500);
    a += 100;
    b -= 10;
    RabbitIndex = (RabbitIndex + 1) % Rabbits.length;
    rect(640,640,500,60,28);
    fill(255);
    text("A rabbit is taking a walk!", text_x, text_y);
  }


  // 자라 토끼보고 화들짝!
  if (millis() - timescene1_2 + 5000 >= 13000 && millis() - timescene1_2 + 5000 <= 16000 ) {
    image(sand1, 0, 0, 1280, 720);
    image(Rabbits[RabbitIndex], c, d, 500, 500);
    c += 120;
    d += 50;
    RabbitIndex = (RabbitIndex + 1) % Rabbits.length;
    if (millis() - timescene1_2 + 5000 >= 13000 && millis() - timescene1_2 + 5000 <= 14000) {
      image(turtle1, 1000, 300, 100, 200);
    }
    if (millis() - timescene1_2 + 5000 > 14000 && millis() - timescene1_2 + 5000 <= 16000) {
      image(turtleSur2, 1000, 300, 150, 200);
      rect(640,640,300,60,28);
      fill(255);
      text("Oh dear!", text_x, text_y);
    }
  }


  // 자라 토끼한테 접근
  if (millis() - timescene1_2 + 5000 >= 16000 && millis() - timescene1_2 + 5000 <= 17000) {
    image(sand2, 0, 0, 1280, 720);
    image(rabbitL1, 900, 300, 450, 450);
    image(Turtles_W[TurtleWIndex], e, f, 300, 350);
      TurtleWIndex = (TurtleWIndex + 1) % Turtles_W.length;
    if (millis() - timescene1_2 + 5000 >= 16000 && millis() - timescene1_2 + 5000 <= 17000) {
      e += 160;
      f -= 5;
    }
  }
  
  // 대사
  if (millis() - timescene1_2 + 5000 >= 17000 && millis() - timescene1_2 + 5000 <= 38000) {
    image(sand2, 0, 0, 1280, 720);
    image(rabbitL1, 900, 300, 450, 450);
    image(turtleR, e, 380, 120, 240);
    
    if (currentAudioIndex1 == 4) {
      playAudio(currentAudioIndex1);
      currentAudioIndex1 ++;
    }
    Village_bgm.play();
    if (millis() - timescene1_2 + 5000 >= 17000 && millis() - timescene1_2 + 5000 <= 22000) {
      rect(640,640,1250,60,28);
      fill(255);
      text("Where are you going, rabbit? I am turtle, from the dragon palace.", text_x, text_y);
    }
    if (millis() - timescene1_2 + 5000 >= 22000 && millis() - timescene1_2 + 5000 <= 26000) {
      rect(640,640,1200,60,28);
      fill(255);
      text("Why don't you take a look at the dragon palace where I live?", text_x, text_y);
    }
    if (millis() - timescene1_2 + 5000 >= 26000 && millis() - timescene1_2 + 5000 <= 27000) {
      rect(640,640,400,60,28);
      fill(255);
      text("If we go together,", text_x, text_y);
    }
    if (millis() - timescene1_2 + 5000 >= 27000 && millis() - timescene1_2 + 5000 <= 31000) {
      rect(640,640,1100,60,28);
      fill(255);
      text("we can watch the beautiful pillars of the Dragon Palace", text_x, text_y);
    }
    if (millis() - timescene1_2 + 5000 >= 31000 && millis() - timescene1_2 + 5000 <= 32000) {
      rect(640,640,400,60,28);
      fill(255);
      text("along with a feast.", text_x, text_y);
    }
    if (millis() - timescene1_2 + 5000 >= 32000 && millis() - timescene1_2 + 5000 <= 38000) {
      rect(640,640,960,60,28);
      fill(255);
      text("It's good to share good things, isn't that right?", text_x, text_y);
    }
  }
  

  // 토끼 솔깃
  if (millis() - timescene1_2 + 5000 >= 38000 && millis() - timescene1_2 + 5000 <= 43000) {
    image(sand1, -320, -180, 1920, 1080);
    image(rabbit_sur1, 240, 100, 800, 800);
    
    if (currentAudioIndex1 == 5) {
      playAudio(currentAudioIndex1);
      currentAudioIndex1 ++;
    }
    if (millis() - timescene1_2 + 5000 >= 38000 && millis() - timescene1_2 + 5000 <= 40000) {
      rect(640,640,800,60,28);
      fill(255);
      text("Oh, that is the palace under the sea...", text_x, text_y);
    }
    if (millis() - timescene1_2 + 5000 >= 40000 && millis() - timescene1_2 + 5000 <= 43000) {
      rect(640,640,650,60,28);
      fill(255);
      text("I am tired of the land for now.", text_x, text_y);
    }
  }


  // 토끼 ok
  if (millis() - timescene1_2 + 5000 >= 43000 && millis() - timescene1_2 + 5000 <= 46000) {
    image(sand1, -320, -180, 1920, 1080);
    image(rabbit_ok1, 240, 100, 800, 800);
    
    if (currentAudioIndex1 == 6) {
      playAudio(currentAudioIndex1);
      currentAudioIndex1 ++;
    }
    if (millis() - timescene1_2 + 5000 >= 43000 && millis() - timescene1_2 + 5000 <= 45000) {
      rect(640,640,600,60,28);
      fill(255);
      text("And I might have some treats!", text_x, text_y);
    }
    if (millis() - timescene1_2 + 5000 >= 45000 && millis() - timescene1_2 + 5000 <= 46000) {
      rect(640,640,550,60,28);
      fill(255);
      text("Let's go to the palace!", text_x, text_y);
    } 
    Village_bgm.close();

  }

  // 토끼 자라 바다 속으로 들어감
    if (millis() - timescene1_2 + 5000 >= 46000 && millis() - timescene1_2 + 5000 <= 49000) {
      image(sand3, 0, 0, 1280, 720);
      image(turtleUP, 550, 500, 200, 150);
      frameRate(5);
      image(RabbitsL[RabbitLIndex], a, b, 500, 500);
      RabbitLIndex = (RabbitLIndex + 1) % RabbitsL.length;
      if (millis() - timescene1_2 + 5000 >= 45000 && millis() - timescene1_2 + 5000 <= 48000) {
        a -= 35;
        b += 10;
      }
    }
    if (millis() - timescene1_2 + 5000 >= 49000) {
      image(underthesea, 0, 0, 1280, 720);
      frameRate(15);
      image(Turtles_s[TurtleSIndex], mouseX-200, mouseY-200, 400, 400);
      TurtleSIndex = (TurtleSIndex + 1) % Turtles_s.length;
      if (mouseX > 920 && mouseX < 1185 && mouseY > 455 && mouseY < 640) {
        if (mousePressed) {
          seaState = 1;
          holeScene = 2;
          timescene1_3 = millis();
        }
      }
    }

  popStyle();
}
