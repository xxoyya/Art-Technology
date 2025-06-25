PImage BGsea1; // team1 background
PImage team2BG;
PImage end_shop;
PImage [] zara_swimming_end = new PImage [3];
PImage [] zara_swimming_end_red = new PImage [3];
PImage zara_ghost;
PImage zara_ghost_red;
PImage zara_back;
PImage zara_back_red;
PImage credit_1, credit_2, credit_3;
PImage credit_BG1, credit_BG2;
PImage credit_jyw, credit_keh, credit_ksh, credit_ksj, credit_lge, credit_lja, credit_ysj, credit_jsh, credit_hes, credit_pmj, credit_pks;
PImage thumbsup_zara;
PImage voice_credit;
PImage end_pic;


int end_prevTime;
int zara_swimming_end_index = 0;
int zara_swimming_end_red_index = 0;
int zara_swimming_endCreditY = 100;
int zara_swimming_endCreditX = 100;
int zara_ghostY = 100;
int zara_ghostX = 100;
int zara_back_endCreditX = 600;
int zara_back_endCreditY = 500;

int ouchStart = 0; //자라가 장애물에 부딪쳤을 때 시간
boolean hit = false;

//각 조 크레딧 진행 시간
int team1_endTime = 24;
int team2_endTime = 21;
int team3_endTime = 25;

//endScene +1 될때마다 배경 전환
int endScene = 0;

//test
int team1_creditX=1280;
int team2_creditX=1280;
int team3_creditX=1280;
int health = 0;

void endCredit(){
  end_bgm.play();
  if(endScene == 0){
    team1_endCredit();
    circuit(end_prevTime,team1_endTime);
  }else if(endScene == 1){
    team2_endCredit();
    circuit(end_prevTime,team2_endTime);
  }else if(endScene == 2){
    team3_endCredit();
    circuit(end_prevTime,team3_endTime);
  }else if(endScene == 3){
    image(end_pic,0,0);
    end_bgm.close();
  }
  
}

void team1_endCredit() {
  // Draw the background image
  image(BGsea1, 0, 0);

  // Set the frame rate
  frameRate(10);

  // Handle player movement based on key inputs
  if (key == CODED && keyPressed) {
    if (keyCode == UP) {
      zara_swimming_endCreditY -= 30;
    } else if (keyCode == DOWN) {
      zara_swimming_endCreditY += 30;
    } else if (keyCode == LEFT) {
      zara_swimming_endCreditX -= 30;
    } else if (keyCode == RIGHT) {
      zara_swimming_endCreditX += 30;
    }
  }

  // Reset hit status at the beginning of each frame
  hit = false;

  // Check for collisions with obstacles
  hit1(credit_1, team1_creditX, 80, 400, 100);
  hit1(credit_ksj, team1_creditX + 600, 420, 300, 120);
  hit1(credit_ksh, team1_creditX + 1200, 250, 330, 132);
  hit1(credit_jyw, team1_creditX + 2000, 500, 280, 180);
  hit1(credit_ysj, team1_creditX + 2300, 110, 260, 130);
  hit1(credit_BG1, team1_creditX + 2700, 500, 624, 42);

  // Move obstacles to the left
  team1_creditX -= 20;

  // Draw the appropriate image based on hit status
  if (hit) {
    image(zara_swimming_end_red[zara_swimming_end_red_index], zara_swimming_endCreditX, zara_swimming_endCreditY, 205, 160);
    zara_swimming_end_red_index = (zara_swimming_end_red_index + 1) % zara_swimming_end_red.length;
  } else {
    image(zara_swimming_end[zara_swimming_end_index], zara_swimming_endCreditX, zara_swimming_endCreditY, 205, 160);
    zara_swimming_end_index = (zara_swimming_end_index + 1) % zara_swimming_end.length;
  }
  
  if(team1_creditX == -2700){
    endScene = 1;
  }
}


void team2_endCredit() {
  // Draw the background image
  image(team2BG, 0, 0, 1280, 720);

  // Handle player movement based on key inputs
  if (key == CODED && keyPressed) {
    if (keyCode == UP) {
      zara_ghostY -= 30;
    } else if (keyCode == DOWN) {
      zara_ghostY += 30;
    } else if (keyCode == LEFT) {
      zara_ghostX -= 30;
    } else if (keyCode == RIGHT) {
      zara_ghostX += 30;
    }
  }

  // Reset hit status at the beginning of each frame
  hit = false;

  // Check for collisions with obstacles
  hit2(credit_2, team2_creditX, 80, 400, 100);
  hit2(credit_jsh, team2_creditX + 600, 300, 300, 170);
  hit2(credit_lja, team2_creditX + 1200, 500, 338, 140);
  hit2(credit_keh, team2_creditX + 1900, 100, 300, 150);
  hit2(credit_BG1, team2_creditX + 2300, 600, 624, 42);

  // Move obstacles to the left
  team2_creditX -= 20;

  // Draw the appropriate image based on hit status
  if (hit) {
    image(zara_ghost_red, zara_ghostX, zara_ghostY, 120, 245);
    //ellipse(50, 50, 400, 400);
  } else {
    image(zara_ghost, zara_ghostX, zara_ghostY, 120, 245);
  }
  
  if(team2_creditX == -2700){
    endScene = 2;
  }
}

void team3_endCredit() {
  // Draw the background image
  image(end_shop, 0, 0, 1280, 720);

  // Handle player movement based on key inputs
  if (key == CODED && keyPressed) {
    if (keyCode == LEFT) {
      zara_back_endCreditX -= 30;
    } else if (keyCode == RIGHT) {
      zara_back_endCreditX += 30;
    } else if (keyCode == UP) {
      zara_back_endCreditY -= 30;
    } else if (keyCode == DOWN) {
      zara_back_endCreditY += 30;
    }
  }

  // Reset hit status at the beginning of each frame
  hit = false;

  // Check for collisions with obstacles
  hit3(credit_3, team3_creditX, 80, 400, 100);
  hit3(credit_pmj, team3_creditX + 600, 500, 300, 200);
  hit3(credit_lge, team3_creditX + 1100, 100, 315, 155);
  hit3(credit_pks, team3_creditX + 1800, 300, 350, 100);
  hit3(credit_hes, team3_creditX + 2300, 200, 350, 130);
  hit3(credit_BG2, team3_creditX + 2800, 550, 500, 60);
  hit3(voice_credit, team3_creditX + 3300, 300, 500,55);

  // Move obstacles to the left
  team3_creditX -= 20;

  // Draw the appropriate image based on hit status
  if (hit) {
    image(zara_back_red, zara_back_endCreditX, zara_back_endCreditY, 125, 240);
  } else {
    image(zara_back, zara_back_endCreditX, zara_back_endCreditY, 125, 240);
  }
  
  if(team3_creditX == -3300){
    endScene = 3;
  }
}


//m 에는 end_prevTime 들어가야 함
void circuit(int m, int howLong){
  //페이즈 당 정한 시간이 지나면 다음 페이즈로 넘어간다.
  if(millis() - m >= 1000*howLong && endScene <3 ){
    end_prevTime = millis();
    endScene++;
  } else if (endScene == 3) endScene =3;
}

//  hit(PImage 이름, x좌표, y좌표, 가로 길이, 세로 길이)
//  이미지를 출력함과 동시에 장애물로 인식함.
void hit1(PImage img, float x, float y, float _width, float _height) {
  // Draw the obstacle image
  image(img, x, y, _width, _height);

  // Check if the player collides with the obstacle
  if (zara_swimming_endCreditX <= x + _width && x <= zara_swimming_endCreditX + 205 &&
      zara_swimming_endCreditY <= y + _height && y <= zara_swimming_endCreditY + 160) {
    // If a collision occurs and the player hasn't been hit recently
    if (ouchStart == 0 && !hit) {
      ouchStart = millis(); // Record the time when the collision occurred
    }
    // If it's been less than 1000 milliseconds since the collision started, set hit to true
    if (millis() - ouchStart < 1000) {
      hit = true;
    }
  } else {
    // Reset the hit detection if there's no collision
    ouchStart = 0;
  }
}

public void hit2(PImage img, float x, float y, float _width, float _height) {
  image(img, x, y, _width, _height);

  if (zara_ghostX <= x + _width && x <= zara_ghostX + 120 &&
      zara_ghostY <= y + _height && y <= zara_ghostY + 245) {
    if (ouchStart == 0 && !hit) {
      ouchStart = millis(); 
    }
    if (millis() - ouchStart < 1000) {
      hit = true;
    }
  } else {
    ouchStart = 0;
  }
}

public void hit3(PImage img, float x, float y, float _width, float _height) {
  //장애물 이미지 출력함
  image(img, x, y, _width, _height);

  //캐릭터가 장애물이랑 충돌했는지 확인
  if (zara_back_endCreditX <= x + _width && x <= zara_back_endCreditX + 125 &&
      zara_back_endCreditY <= y + _height && y <= zara_back_endCreditY + 240) {
    // 충돌발생
    if (ouchStart == 0 && !hit) {
      ouchStart = millis(); // 충돌 발생했을때의 시간
      hit = true; 
    }
    // 충돌이 발생한지 1초 이내
    if (millis() - ouchStart < 1000) {
      hit = true;
    }
  }else {
    ouchStart = 0;
  }
}
