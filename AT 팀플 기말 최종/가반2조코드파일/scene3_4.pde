PImage shop;
PImage palace;
PImage king1;
PImage king2;
PImage babyking;
PImage palacezoom;
PImage mirror;
PImage transform;
PImage hair;
PImage brain;
PImage recovery;
PImage theEnd;
PImage curtain;
PImage back2;
PImage nextTo;
PImage backToPotion;
PImage mirror_text1;
PImage mirror_text2;

int startTime;
int i = 640;
int j = 360;
int duration = 6000;
int duration2 = 12000;
int rX = 640;
int rY = 600;
int tX = 640;
int tY = 600;
int dirY = 10;
int cX1 = -640;
int cX2 = 1280;
int dircX = 10;
int wX1 = 500;
int wX2 = 500;
int dirwX1 = 20;
int dirwX2 = 20;

boolean save = false;
boolean change = false;
boolean toPotion = false;
boolean toEnding = false;
boolean run = false;
boolean toDisplay1 = false;
boolean toDisplay2 = false;


void scene3_4() {
  pushStyle();
  if (holeScene == 8) {
    intro1();
  } else if (holeScene == 9) {
    intro2();
  }
  popStyle();
}


//recovery intro
void intro1() {
  pushStyle();


  //background
  image(palace, 0, 0, 1280, 720);

  //zara walking
  image(back2, rX, rY, 200, 250);
  image(recovery, rX+76, rY+7, 42, 57);

  image(king1, i-142, j-291, 300, 350);

  if (rY > j-100) {
    rY -= dirY;
    if (rY == j-100) {
      rY = j-100;
    }
  }

  if (mousePressed && mouseX >= rX-100 && mouseX <= rX+100 && mouseY >= rY-125 && mouseY <= rY+125) {
    toDisplay1 = true;
  }
  if (toDisplay1) {
    displayEndingOne();
  }

  popStyle();
}


void displayEndingOne() {
  pushStyle();

  background(255);

  loadPixels();
  palacezoom.loadPixels();

  //background
  image(palacezoom, 0, 0, 1280, 720);

  //light
  for (int x = 0; x < palacezoom.width; x++ ) {
    for (int y = 0; y < palacezoom.height; y++ ) {

      int loc = x + y*palacezoom.width;

      float r = red  (palacezoom.pixels[loc]);
      float g = green(palacezoom.pixels[loc]);
      float b = blue (palacezoom.pixels[loc]);

      float distance = dist(x, y, 640, 360);

      float adjustBrightness = map(distance, 0, 600, 3, 0);
      r *= adjustBrightness;
      g *= adjustBrightness;
      b *= adjustBrightness;

      r += 30;
      b += 30;

      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);

      color c = color(r, g, b);
      pixels[loc] = c;
    }
  }

  updatePixels();


  fill(0, 100); // 검은색, 투명도 50%
  rect(640, 360, width, height);

  //sea king
  if (mousePressed && mouseX >= i-450-250 && mouseX <= i-450+250 && mouseY >= j-242-275 && mouseY <= j-242+275) {
    save = true;
    wX1 -= dirwX1;
  }

  //거울
  image(mirror, i+-58, j-268, 500, 600);

  //커튼봉
  fill(#ddb92a);
  rect(i-200, j-249, 500, 15, 50);
  ellipse(i-450, j-248, 25, 25);
  ellipse(i+50, j-248, 25, 25);


  if (save) {
    wX1 -= dirwX1;

    if (wX1 == 0) {
      dirwX1 = 0;
    }

    image(king2, i-450, j-242, 500, 550);
    image(curtain, i-450, j-242, wX1, 550);
    image(mirror_text1, i+95, j-268, 250, 500);
  } else {
    image(king1, i-450, j-242, 500, 550);
  }


  //다시 돌아가기
  image(backToPotion, width-155, height-75, 75, 75);
  fill(255);
  textSize(12);
  text("Back", width - 130, height - 30);

  if (mousePressed && mouseX >= width-150 && mouseX<= width-150+70 && mouseY>=height-60 && mouseY <= height-60+70) {
    holeScene = 7;
  }


  //찐 엔딩 버튼
  image(nextTo, width - 70, height - 60, 50, 50);
  fill(255);
  textSize(12);
  text("Next", width - 60, height - 30);

  if (mousePressed && mouseX>=width-70 && mouseX<=width-70+50 && mouseY>=height-60 && mouseY <=height-60+20) {
    toEnding = true;
  }

  //엔딩화면 실행 + 불꽃놀이
  if (toEnding) {
    celebrate();
    run = true;
  }

  popStyle();
}




//transform intro
void intro2() {
  pushStyle();

  background(255);

  //zara walking
  image(palace, 0, 0, 1280, 720);

  //zara walking
  image(back2, tX, tY, 200, 250);
  image(transform, tX+76, tY+7, 42, 57);

  image(king1, i-142, j-291, 300, 350);

  if (tY > j-100) {
    tY -= dirY;
    if (tY == j-100) {
      tY = j-100;
    }
  }

  if (mousePressed && mouseX >= tX-100 && mouseX <= tX+100 && mouseY >= tY-125 && mouseY <= tY+125) {
    toDisplay2 = true;
  }
  if (toDisplay2) {
    transform();
  }
  
  


  popStyle();
}

void transform() {
  pushStyle();

  background(255);

  //background
  image(palace, 0, 0, 1280, 720);

  loadPixels();
  palacezoom.loadPixels();

  //background
  image(palacezoom, 0, 0, 1280, 720);

  for (int x = 0; x < palacezoom.width; x++ ) {
    for (int y = 0; y < palacezoom.height; y++ ) {

      int loc = x + y*palacezoom.width;

      float r = red  (palacezoom.pixels[loc]);
      float g = green(palacezoom.pixels[loc]);
      float b = blue (palacezoom.pixels[loc]);

      float distance = dist(x, y, 640, 360);

      float adjustBrightness = map(distance, 0, 600, 3, 0);
      r *= adjustBrightness;
      g *= adjustBrightness;
      b *= adjustBrightness;

      r += 30;
      b += 30;

      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);

      color c = color(r, g, b);
      pixels[loc] = c;
    }
  }

  updatePixels();

  fill(0, 100); // 검은색, 투명도 50%
  rect(640, 360, width, height);

  if (mousePressed && mouseX >= i-450-250 && mouseX <= i-450+250 && mouseY >= j-242-275 && mouseY <= j-242+275) {
    change = true;
    wX2 -= dirwX2;
  }

  //거울
  image(mirror, i+-58, j-268, 500, 600);

  //커튼봉
  fill(#ddb92a);
  rect(i-200, j-247, 500, 15, 50);
  ellipse(i-450, j-248, 25, 25);
  ellipse(i+50, j-248, 25, 25);

  if (change) {
    wX2 -= dirwX2;

    if (wX2 == 0) {
      dirwX2 = 0;
    }

    image(babyking, i-451, j-242, 500, 550);
    image(curtain, i-450, j-242, wX2, 550);
    image(mirror_text2, i+100, j-200, 250, 500);
  } else {
    image(king1, i-451, j-242, 500, 550);
  }

  //다시 돌아가기
  image(backToPotion, width-155, height-75, 75, 75);
  fill(255);
  textSize(12);
  text("Back", width - 130, height - 30);

  if (mousePressed && mouseX >= width-150 && mouseX<= width-150+70 && mouseY>=height-60 && mouseY <= height-60+70) {
    holeScene = 7;
  }

  popStyle();
}

boolean toEndCredit = false;

void celebrate () {
  pushStyle();

  background(255);

  image(palace, 0, 0, 1280, 720);

  image(king2, i-142, j-291, 300, 350);

  image(shinha1, i-310, j+60, 100, 150);
  image(shinha2, i-330, j+100, 100, 150);
  image(shinha3, i-360, j+150, 100, 150);
  image(shinha4, i-390, j+200, 100, 150);

  image(shinha1, i+310-80, j+60, 100, 150);
  image(shinha2, i+330-80, j+100, 100, 150);
  image(shinha3, i+360-80, j+150, 100, 150);
  image(shinha4, i+390-80, j+200, 100, 150);

  //커튼 닫힘
  image(curtain, cX1, 0, 640, 780);
  image(curtain, cX2, 0, 640, 780);

  cX1 += dircX;
  cX2 -= dircX;

  if (cX1 == 0) {
    dircX = 0;
  }
  if (cX2 == 640) {
    dircX = 0;
  }

  if (dircX == 0) {
    image(theEnd, 0, 0, 1280, 720);
    run = false;
    toEndCredit = true;
    if (toEndCredit) {
      end_prevTime = millis();
      endCredit();
    }
  }

  if (run) {

    if (random(1) < 0.05) {
      fireworks.add(new Firework());
    }

    // 역순 루프에서 리스트 수정
    for (int i = fireworks.size() - 1; i >= 0; i--) {
      Firework f = fireworks.get(i);
      f.update();
      f.show();
      if (f.done()) {
        fireworks.remove(i);
      }
    }

    if (fireworks.isEmpty()) {
      fireworks.add(new Firework());
    }

    // 리스트 복사본을 사용하여 루프 실행
    ArrayList<Firework> fireworksCopy = new ArrayList<Firework>(fireworks);
    for (Firework f : fireworksCopy) {
      f.update();
      f.show();
      if (f.done()) {
        fireworks.remove(f);
      }
    }
  }

  popStyle();
}

//불꽃놀이
ArrayList<Firework> fireworks = new ArrayList<Firework>();

class Firework {

  Particle firework;
  ArrayList<Particle> particles;
  color fireworkColor;
  boolean exploded;

  Firework() {
    firework = new Particle(random(width), height, true, #FFF300); // 무작위 색상
    particles = new ArrayList<Particle>();
    exploded = false;
  }

  void update() {
    pushStyle();

    if (!exploded) {
      firework.applyForce(new PVector(0, 0.2)); // Gravity
      firework.update();
      if (firework.vel.y >= 0) {
        exploded = true;
        explode();
      }
    }

    for (int i = particles.size() - 1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.applyForce(new PVector(0, 0.2)); // Gravity
      p.update();
      if (p.done()) {
        particles.remove(i);
      }
    }
    popStyle();
  }

  void explode() {
    for (int i = 0; i < 100; i++) {
      particles.add(new Particle(firework.pos.x, firework.pos.y, false, #FFF300));
    }
  }

  void show() {
    pushStyle();

    if (run) {
      if (!exploded) {
        firework.show();
      }
      for (Particle p : particles) {
        p.show();
      }
    }
    popStyle();
  }

  boolean done() {
    return exploded && particles.isEmpty();
  }
}

//입자
class Particle {
  PVector pos;
  PVector vel;
  PVector acc;
  float lifespan;
  color col;
  float size; // 입자의 크기를 나타내는 변수

  Particle(float x, float y, boolean firework, color col) {
    pos = new PVector(x, y);
    acc = new PVector(0, 0);

    if (firework) {
      vel = new PVector(0, random(-12, -8));
      this.col = col;
      size = 4; // 발사체 크기 설정
    } else {
      vel = PVector.random2D();
      vel.mult(random(2, 10));
      this.col = col;
      lifespan = 255;
      size = 6; // 불꽃 입자의 크기 설정
    }
  }

  void applyForce(PVector force) {
    acc.add(force);
  }

  void update() {
    pushStyle();
    vel.add(acc);
    pos.add(vel);
    if (lifespan > 0) {
      lifespan -= 4;
    }
    acc.mult(0);
    popStyle();
  }

  void show() {
    pushStyle();
    if (lifespan > 0) {
      strokeWeight(2);
      stroke(col, lifespan);
    } else {
      strokeWeight(4);
      stroke(col);
    }
    fill(col, lifespan);
    ellipse(pos.x, pos.y, size, size); // point 대신 ellipse 사용
    popStyle();
  }

  boolean done() {
    return lifespan < 0;
  }
}
