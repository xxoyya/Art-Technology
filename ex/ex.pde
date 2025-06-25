PImage img;
int a = 0;

void setup() {
  size(400, 400);
  img = loadImage("image.jpg"); // 이미지 파일명은 적절하게 변경하세요
}

void draw() {
  background(255);
  image(img, 100, a, 200, 200);
}

void keyPressed() {
  if (key == ' ') {
    a -= 10;
  }
}
