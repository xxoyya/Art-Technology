int timescene1_3;
int currentAudioIndex3 = 7;

int runningtime14 = 2000;
int runningtime15_1;//= runningtime14 + 2000 + timescene1_3;
int runningtime15_2;// = runningtime15_1 + 4000 + timescene1_3;
int runningtime16;// = runningtime15_2 + 6000 + timescene1_3;
int runningtime17;// = runningtime16 + 3000 + timescene1_3;
int runningtime18;// = runningtime17 + 3000 + timescene1_3;
int runningtime19;

int time16;// = runningtime15_2 + 1000 + timescene1_3;

int sceneState = 0;
int seaState = 0;
int jailY = -1000;
int jailState = 0;

int seaX_3 = 0;
int seaY_3 = 0;
int seaSizeX = 1280;
int seaSizeY = 720;

PImage sea;
PImage palace_1;
PImage king_unhealthy2, rabbitwalking_0, zara_walking1, rabbit_surprising, rabbit_scream1, rabbit_scream2;
PImage jail, jail_longer;


void scene14() { //바다 넘어가기
  pushStyle();
  pushMatrix();
  if (seaState == 1) {
    image(sea, seaX_3, seaY_3, seaSizeX, seaSizeY);
    seaX_3 -= 64;
    seaY_3 -= 32;
    seaSizeX += 64;
    seaSizeY += 36;
    if (seaSizeX >= 3600) {
      scene15_1();
      sceneState = 1;
      runningtime14 = millis() - timescene1_3;
    }
  }
  popStyle();
  popMatrix();
}

void scene15_1() { //용궁 삼자대면
  pushStyle();
  pushMatrix();
  image(palace_1, 0, 0);
  image(zara_walking1, 720, 420, 140, 270);
  image(king_unhealthy2, 485, 75, 340, 340);
  image(rabbitwalking_0, 200, 250, 650, 650);

  popStyle();
  popMatrix();
}

void scene15_2() { //용왕 대사
  pushStyle();
  pushMatrix();
  image(palace_1, -670, 0, 2560, 1440);
  image(king_unhealthy2, 316, 160, 650, 650);

  textAlign(CENTER, CENTER);
  textFont(scene2_sub_font);
  noStroke();
  fill(#000000, 70);
  rectMode(CENTER);
  if (millis() <= runningtime15_1 + 3500) {
    rect(640, 640, 350, 60, 28);
    fill(255);
    text("Well done, turtle", text_x, text_y);
  } else {
    rect(640, 640, 970, 60, 28);
    fill(255);
    text("Lock that rabbit now and prepare the liver for me.", text_x, text_y);
  }
  
   //용왕 대사 (8) 
   if (currentAudioIndex3 == 7) {
      playAudio(currentAudioIndex3);
      currentAudioIndex3++;
   }

  popStyle();
  popMatrix();
}

void scene16() { //용궁 삼자대면
  pushStyle();
  pushMatrix();
  image(palace_1, 0, 0);
  image(zara_walking1, 720, 420, 140, 270);
  image(king_unhealthy2, 485, 75, 340, 340);

  if (millis() <  time16) { //토끼 놀라는 애니메이션
    image(rabbitwalking_0, 200, 250, 650, 650);
  } else if (millis() <= time16 + 30) {
    image(rabbit_surprising, 200, 250, 650, 650);
  } else if (millis() <= time16 + 60) {
    image(rabbit_surprising, 190, 240, 650, 650);
  } else if (millis() <= time16 + 90) {
    image(rabbit_surprising, 180, 230, 650, 650);
  } else if (millis() <= time16 + 120) {
    image(rabbit_surprising, 190, 240, 650, 650);
  } else {
    image(rabbit_surprising, 200, 250, 650, 650);
  }

  if (millis() > time16 + 120 && keyPressed && key == ' ') { //철창 내려오기
    jailState = 1;
  }
  if (jailState == 1 && jailY <= 80) {
    image(jail_longer, 330, jailY, 360, 780);
    jailY += 400;
  } else if (jailState == 2) {
    image(jail_longer, 330, -60, 360, 780);
  }
  if (jailY >= 80) {
    jailState = 2;
  }

  textAlign(CENTER, CENTER);
  textFont(scene2_sub_font);
  noStroke();
  fill(#000000, 70);
  rectMode(CENTER);
  if (millis() >= runningtime15_2 + 2500 && millis() <= runningtime15_2 + 4000) {
    rect(640, 640, 400, 60, 28);
    fill(255);
    text("What is going on?!", text_x, text_y);
    
   // 토끼 대사 (9) 
   if (currentAudioIndex3 == 8) {
      playAudio(currentAudioIndex3);
      currentAudioIndex3++;
   }
  }
  
  popStyle();
  popMatrix();
}

void scene17() { //토끼 대사
  pushStyle();
  pushMatrix();
  image(palace_1, -670, -805, 3200, 1800);
  image(rabbit_surprising, -170, -184, 1625, 1625);
  image(jail, 178, -611, 850, 1625);

  textAlign(CENTER, CENTER);
  textFont(scene2_sub_font);
  noStroke();
  fill(#000000, 70);
  rectMode(CENTER);
  rect(640, 640, 1070, 60, 28);
  fill(255);
  text("Turtle, why are you locking me up? Tell me something!", text_x, text_y);
  
  // 토끼 대사 (10) 
   if (currentAudioIndex3 == 9) {
      playAudio(currentAudioIndex3);
      currentAudioIndex3++;
   }

  popStyle();
  popMatrix();
}

void scene18() { //용왕 대사
  pushStyle();
  pushMatrix();
  image(palace_1, -670, 0, 2560, 1440);
  image(king_unhealthy2, 316, 160, 650, 650);

  textAlign(CENTER, CENTER);
  textFont(scene2_sub_font);
  noStroke();
  fill(#000000, 70);
  rectMode(CENTER);

  if (millis() <= runningtime17 + 1800) {
    rect(640, 640, 320, 60, 28);
    fill(255);
    text("Listen, Rabbit.", text_x, text_y);
  } else if (millis() >= runningtime17 + 1800 && millis() <= runningtime17 + 3500) {
    rect(640, 640, 960, 60, 28);
    fill(255);
    text("I've been suffering from an illness for a long time.", text_x, text_y);
  } else if (millis() >= runningtime17 + 3500 && millis() <= runningtime17 + 5500) {
    rect(640, 640, 500, 60, 28);
    fill(255);
    text("and I am close to death,", text_x, text_y);
  } else if (millis() >= runningtime17 + 5500 && millis() <= runningtime17 + 9000) {
    rect(640, 640, 830, 60, 28);
    fill(255);
    text("a prophet from the heavens once told me", text_x, text_y);
  } else if (millis() >= runningtime17 + 9000 && millis() <= runningtime17 + 12500) {
    rect(640, 640, 930, 60, 28);
    fill(255);
    text("'Eating the liver of a rabbit will cure your illness.'", text_x, text_y);
  } else if (millis() >= runningtime17 + 12500 && millis() <= runningtime17 + 16500) {
    rect(640, 640, 770, 60, 28);
    fill(255);
    text("So I sent my loyal men to capture you.", text_x, text_y);
  } else if (millis() >= runningtime17 + 16500 && millis() <= runningtime17 + 19500) {
    rect(640, 640, 550, 60, 28);
    fill(255);
    text("Do not lament your death.", text_x, text_y);
  } else if (millis() >= runningtime17 + 19500 && millis() <= runningtime17 + 23500) {
    rect(640, 640, 680, 60, 28);
    fill(255);
    text("I have great responsibilities to die.", text_x, text_y);
  } else if (millis() >= runningtime17 + 23500 && millis() <= runningtime17 + 25500) {
    rect(640, 640, 480, 60, 28);
    fill(255);
    text("If you sacrifice yourself,", text_x, text_y);
  } else if (millis() >= runningtime17 + 25500 && millis() <= runningtime17 + 27500) {
    rect(640, 640, 630, 60, 28);
    fill(255);
    text("your death would be honorable", text_x, text_y);
  } else if (millis() >= runningtime17 + 27500) {
    rect(640, 640, 880, 60, 28);
    fill(255);
    text("If you have something to say, now is the time", text_x, text_y);
  }
  
  // 용왕 대사 (11) 
   if (currentAudioIndex3 == 10) {
      playAudio(currentAudioIndex3);
      currentAudioIndex3++;
   }

  popStyle();
  popMatrix();
}

void scene19() { //토끼 대사
  pushStyle();
  pushMatrix();
  image(palace_1, -670, -805, 3200, 1800);
  image(rabbit_scream1, -170, -184, 1625, 1625);
  image(jail, 178, -611, 850, 1625);
  image(rabbit_scream2, -170, -184, 1625, 1625);

  textAlign(CENTER, CENTER);
  textFont(scene2_sub_font);
  noStroke();
  fill(#000000, 70);
  rectMode(CENTER);
  if (millis() <= runningtime18 + 4000) {
    rect(640, 640, 820, 60, 28);
    fill(255);
    text("Ah, I am in big trouble.. What should I do?", text_x, text_y);
  } else if (millis() >= runningtime18 + 4000 && millis() <= runningtime18 + 7500) {
    rect(640, 640, 640, 60, 28);
    fill(255);
    text("I'll pick a trick from my sleeves...", text_x, text_y);
  }
  
  // 나레이션 음성 (12) 
   if (currentAudioIndex3 == 11) {
      playAudio(currentAudioIndex3);
      currentAudioIndex3++;
   }

  popStyle();
  popMatrix();
}

void scene1_3() {
  runningtime15_1 = runningtime14 + 2000 + timescene1_3;
  runningtime15_2 = runningtime15_1 + 8000;
  runningtime16 = runningtime15_2 + 4500;
  runningtime17 = runningtime16 + 5500;
  runningtime18 = runningtime17 + 32500;
  runningtime19 = runningtime18 + 7500;
  time16 = runningtime15_2 + 1000;

  if (sceneState == 0) scene14();
  //if (millis() >= runningtime14) scene15_1();
  if (millis() >= runningtime15_1 && sceneState == 1) scene15_2();
  if (millis() >= runningtime15_2) scene16();
  if (millis() >= runningtime16) scene17();
  if (millis() >= runningtime17) scene18();
  if (millis() >= runningtime18) scene19();
  if (millis() >= runningtime19) {
    holeScene = 3;
    timescene1_4 = millis();
  }
  
}
