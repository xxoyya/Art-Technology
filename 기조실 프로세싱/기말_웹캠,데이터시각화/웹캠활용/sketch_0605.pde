
import processing.video.*;
import ddf.minim.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.ugens.*;

Capture video;
PImage prevFrame, start, gameover;


Minim minim;
AudioPlayer player;

boolean gameStarted = false;
boolean tracking = false;
boolean gameOver = false;
boolean StartedScreen = false;
int level = 0;
int interval = 7000; // 10 seconds
int trackingTime = 8000; // 10 seconds
long startTime;

float threshold = 150;
PVector tracker;

PFont font;
int initialWhitePixels = 0; // a 값
int whitePixelThreshold = 200; // 추가로 허용할 흰색 픽셀 수

int countdown = 4;
long countdownStart;


void setup() {
  size(640, 480);
  start = loadImage("start.png");
  gameover = loadImage("gameover.png");
  
  video = new Capture(this, width, height, 30);
  video.start();
  prevFrame = createImage(video.width, video.height, RGB);
  tracker = new PVector(width / 2, height / 2);
  startScreen();
  
  

  // Load the font
  font = createFont("Pretendard-SemiBold_0.otf", 32);
  textFont(font);
  // Create a Minim object
  minim = new Minim(this);
  
  // Load the MP3 file
  player = minim.loadFile("bgm.mp3");
}

void startScreen() {
  background(255);
  image(start, 0, 0, 640, 480);
  fill(0);
  textSize(32);
  textAlign(CENTER, CENTER);
  //text("Start Game", width / 2, height / 2);
}

void startGame() {
  gameStarted = true;
  gameOver = false;
  level = 0;
  startTime = millis();
  // Play the loaded MP3 file when the game starts
  player.play();
}


void draw() {
  if (!gameStarted) {
    return;
  }

  if (gameOver) {
    gameOverScreen();
    return;
  }
 if (millis() - startTime < interval) {
    background(0, 255, 0); // 초록색 배경
    calculateScore(); // a 값 계산
    displayText("무궁화 꽃이 피었습니다");
  } else if (millis() - startTime < interval + trackingTime) {
    if (countdown > 0) {
      background(255);
      displayCountdown();
    } else {
      background(255, 0, 0); // 빨간색 배경
      trackMovement(); // b 값 계산 및 게임 오버 판단
      displayText("!◬_tracking_◬!");
    }
  } else {
    startTime = millis(); // 타이머 리셋
    countdown = 4; // 카운트 다운을 다시 4로 설정
    level++; // 레벨 증가
  }

  displayLevel();
}
void displayCountdown() {
  if (millis() - countdownStart > 1000) {
    countdown--;
    countdownStart = millis();
  }
  fill(0);
  textSize(64);
  textAlign(CENTER, CENTER);
  textFont(font);
  text(String.valueOf(countdown), width / 2, height / 2);
}


void calculateScore() {
  video.loadPixels();
  prevFrame.loadPixels();
  loadPixels();

  int whitePixels = 0; // 흰색 픽셀 수 카운트

  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      int loc = x + y * video.width;
      color current = video.pixels[loc];
      color previous = prevFrame.pixels[loc];
      float diff = dist(red(current), green(current), blue(current), red(previous), green(previous), blue(previous));
      if (diff > threshold) {
        pixels[loc] = color(255); // 움직임이 감지되면 하얀색으로 표시
        whitePixels++;
      }
    }
  }
  
  if (millis() - startTime < interval) {
    initialWhitePixels = whitePixels; // a 값 저장
  }

  updatePixels();
}

void trackMovement() {
  video.loadPixels();
  prevFrame.loadPixels();
  loadPixels();

  int whitePixels = 0; // 현재 흰색 픽셀 수 카운트

  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      int loc = x + y * video.width;
      color current = video.pixels[loc];
      color previous = prevFrame.pixels[loc];
      float diff = dist(red(current), green(current), blue(current), red(previous), green(previous), blue(previous));
      if (diff > threshold) {
        pixels[loc] = color(255); // 움직임이 감지되면 하얀색으로 표시
        whitePixels++;
      }
    }
  }
  
  if (whitePixels - initialWhitePixels > whitePixelThreshold) {
    gameOver = true; // 게임 오버
  }

  updatePixels();
}

void displayText(String msg) {
  fill(0);
  textSize(32);
  textAlign(CENTER, CENTER);
  textFont(font);
  text(msg, width / 2, height / 2);
}

void displayLevel() {
  fill(0);
  textSize(24);
  textAlign(RIGHT, TOP);
  textFont(font);
  text("Level: " + level, width - 10, 10);
  
}

void gameOverScreen() {
  background(0);
  fill(255, 0, 0);
  image(gameover, 0, 0, 640, 480);
  textSize(32);
  textAlign(CENTER, CENTER);
  textFont(font);
  //text("GAME OVER", width / 2, height / 2);
  text("Level: " + level, width / 2, height / 2 + 50);
  //text("Click to Restart", width / 2, height / 2 + 100);
  
  player.close();
  minim.stop();
  //super.stop();
}

void mousePressed() {
  if (!gameStarted) {
    startGame();
    countdownStart = millis();
  } else if (gameOver) {
    gameOver = false;
    startGame();
    // Rewind the player to the beginning
    player.rewind();
    // Play the loaded MP3 file when the game restarts
    player.play();
    countdownStart = millis(); // 카운트 다운 시작 시간 초기화
    countdown = 4; // 카운트 다운을 다시 4로 설정
  }
}



void captureEvent(Capture video) {
  video.read();
}
