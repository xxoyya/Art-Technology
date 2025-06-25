

  int scene3_2x = 1000;
  int scene3_2y = 500;
  int w, k = 0;
  String state = "intro";
  PImage img, book, recipe, recipe2, mirrors, good, bad, title, cloud, mirrors2, back;

  //자라 걸어가는거
  int maxwalk = 3;
  int walkIndex2 = 0;
  PImage[] walk = new PImage[maxwalk];

  //거울 전환
  int maxmirrorking = 8;
  int mirrorkingIndex = 0;
  PImage[] mirrorking = new PImage[maxmirrorking];

  //거울 반사 
  int maxb = 2;
  int bIndex = 0;
  PImage[] bSet = new PImage[maxb];

  void display() {
    rectMode(CENTER);
    if (state.equals("intro")) {
      background(255);
      image(img, 0, 0, 1300, 800);
      image(book, scene3_2x-300, scene3_2y-50, 300, 200);
    }
  }

  // 말풍선
  void drawCircles() {
    pushStyle();
    noStroke();
    if (state.equals("intro")) {
      boolean mouseProximity = false;

      if (mouseX > scene3_2x + 100 - 100 && mouseX < scene3_2x + 100 + 100 && mouseY > scene3_2y - 150 && mouseY < scene3_2y + 150) {
        mouseProximity = true;
      }

      if (mouseProximity) {
        fill(255);
        circle(scene3_2x, scene3_2y - 40, 20);
        circle(scene3_2x - 30, scene3_2y - 90, 50);
        circle(scene3_2x - 100, scene3_2y - 200, 200);
        fill(0);
        textSize(20);
        textAlign(CENTER);
        text("I'm going to\n make a potion\n to save the King!!!!", scene3_2x-100, scene3_2y-220);
        fill(225, 0, 0);
        textSize(16);
        text("-press me to start-", scene3_2x-100, scene3_2y-150);
      }

      fill(0);
      textSize(20);
      textAlign(CENTER);
      text("how\nto\nplay", scene3_2x-190, scene3_2y);
    }
    popStyle();
  }

  
  
  void scene3_2mouseClicked(){
    if (state.equals("intro")) {
      if (mouseX > scene3_2x - 150 - 55 && mouseX < scene3_2x - 150 + 55 && mouseY > scene3_2y + 50 - 60 && mouseY < scene3_2y + 50 + 60) {
        state = "recipe";
      }
      if (scene3_2x + 100 - 100 < mouseX && mouseX < scene3_2x + 100 + 100 && scene3_2y - 150 < mouseY && mouseY < scene3_2y + 150) {
        //state = "gamePlay"; 
        holeScene = 7;
      }
    } else if (state.equals("recipe")) {
      if (mouseX > width - 200 - 25 && mouseX < width - 200 + 25 && mouseY > height - 130 - 10 && mouseY < height - 130 + 10) {
        state = "intro";
      }
    }
  }

  void recipe() {
    background(255);
    image(img, 0, 0, 1300, 800);
    fill(255);
    int rx = 640;
    int ry = 360;
    image(recipe, rx-650, ry-350);
    image(back, width - 225, height - 150, 50, 50);
    image(recipe2, rx+30, ry-220, 520, 520);
  }

  



  void scene3_2(){
    if (state.equals("intro")) {
      display();
      drawCircles();
    } else if (state.equals("recipe")) {
      recipe();
    } else if (state.equals("gamePlay")) {
      holeScene = 7;
    }

    if (state.equals("intro")) {
      frameRate(10);

      if (1280 - w > 860) {
        image(walk[walkIndex2], 1280-w, 270, 500, 500);
        walkIndex2 = (walkIndex2 + 1) % walk.length;
        w += 10;
      }
      if (1280 - w == 860) {
        image(walk[1], 860, 270, 500, 500);
      }
      image(cloud, 1290-k, 200, 500, 500);
      k += 30;
    }
    if (state.equals("recipe")) {
      image(mirrorking[mirrorkingIndex], 270, 150, 350, 430);
      mirrorkingIndex = (mirrorkingIndex + 1) % mirrorking.length;

      image(bSet[bIndex], 350, 300, 200, 200);
      bIndex = (bIndex + 1) % bSet.length;
    }
  }

  
