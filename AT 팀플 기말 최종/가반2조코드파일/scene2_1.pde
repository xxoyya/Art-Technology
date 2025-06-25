void scene2_0() {
  pushStyle();
  textAlign(CENTER, CENTER);
  textFont(scene2_sub_font);

  fill(255);
  text("press Right", 640, 360);
  currentAudioIndex=15;
  popStyle();
}


void scene2_1() {
  pushStyle();
  if (currentAudioIndex==15) {
    playAudio(currentAudioIndex);
    currentAudioIndex++;
  }

  image(scene2_bg1, 0, 0, 1280, 720);


  image(zara, 250, 260, 450, 450);
  image(rabbit_scene2, rx, ry, 600, 600);

  if (scene==0) {
    scene2_1_sub();
  }
  if (cut_mode==1 && sub_mode==9) {
    scene=1;
  }
  // 자라와 토끼의 대화 후 scene이 0에서 1로 넘어감
  if (scene == 1) {
    frameRate(7);

    rabbit_scene2 = rabbitJump;
    rx += 40;
    ry += jump;

    if (ry < 150) { //토끼 도망
      jump *= -1;
      ry = 150;
    } else if (ry > 220) {
      jump *= -1;
      ry = 220;
    }

    if (rx > 660) { //자라 놀람
      zara = zaraSurprised;
    }
  }

  popStyle();
}

void scene2_2() {
  pushStyle();
  image(scene2_bg2, 0, 0, 1280, 720);

  if (sub_mode == 0) {
    chasingzara();
    bunnyhop();
  } else if (sub_mode == 1) {
    image(zarasad, 705, 350, 300, 300);
  } else if (sub_mode == 2) {
    image(zarasad, 705, 350, 300, 300);
  } else if (sub_mode == 3 | sub_mode == 4 | sub_mode == 5 | sub_mode == 6 | sub_mode == 7 | sub_mode == 8 | sub_mode == 9 ) {
    image(zaracry, 705, 350, 300, 300);
  }
  //이 장면을 worthless servant 텍스트 끝난 다음에 나와야 함
  else if (sub_mode == 10| sub_mode == 11) {
    image(zaracry, 705, 350, 300, 300);
    if (keyCode == 'S') {
      holeScene = 5;
    } else if (keyCode == 'T') {
      cut_mode = 4;
    }
  }
  image(rock, 850, 400, 300, 300);
  scene2_2_sub();
  if (currentAudioIndex == 16 ) {
    playAudio(currentAudioIndex);
    currentAudioIndex+=1;

  }
  if (sub_mode==4) {
  if (currentAudioIndex==17) {
      playAudio(currentAudioIndex);
      currentAudioIndex++;
    }
  }
  popStyle();
}


void scene2_3() {
  pushStyle();
  chooseEnding();
  scene2_3_sub();
  dyingzara();
  popStyle();
}

PImage backToChoice;
boolean chance = false;
boolean secretEnding = false;

void scene2_4() {
  image(sinha1, 258, 361, 150, 300);
  pushStyle();
  image(scene2_bg4, 0, 0, 1280, 720);
  image(sinha1, 395, 400, 130, 260);
  image(sinha2, 765, 400, 130, 260);
  image(sinha3, 260, 360, 130, 260);
  image(sinha4, 900, 360, 130, 260);
  scene2_4_sub();
  if (currentAudioIndex == 17 ) {
    playAudio(currentAudioIndex);
    currentAudioIndex++;
  }
  
  //다시 돌아가기
  image(backToChoice, width-155, height-75, 75, 75);
  fill(255);
  textSize(12);
  text("Back", width - 130, height - 30);

  if (mousePressed && mouseX >= width-150 && mouseX<= width-150+70 && mouseY>=height-60 && mouseY <= height-60+70) {
    chance = true;
  }
  if (chance) {
    scene2_5();
  }
  
  popStyle();
}

void scene2_5() {
  pushStyle();
  image(scene2_bg2, 0, 0, 1280, 720);
  
  image(zaracry, 705, 350, 300, 300);
  image(rock, 850, 400, 300, 300);
  
  fill(0);
  textSize(50);
  text("Press S to enter secret ending", 640, 360);
  
  if (keyCode == 'S') {
    secretEnding = true;
  }
  if (secretEnding) {
    holeScene = 5;
  }

  
  
  
  popStyle();

}
