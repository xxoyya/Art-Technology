void setup() {
  size(400, 400); // 캔버스 크기를 설정합니다.
  drawCircle(width/2, height/2, 200); // 중심 원을 그립니다.
}

void drawCircle(float x, float y, float d) {
  if (d > 10) { // 종료 조건: 원의 지름이 10보다 클 때만 그립니다.
    ellipse(x, y, d, d); // 원을 그립니다.
    drawCircle(x - d/4, y, d/2); // 좌측에 작은 원을 재귀적으로 그립니다.
    drawCircle(x + d/4, y, d/2); // 우측에 작은 원을 재귀적으로 그립니다.
    // 추가적으로 위나 아래에 원을 그리고 싶다면, 아래 코드를 추가하세요.
    // drawCircle(x, y - d/4, d/2); // 위쪽에 작은 원을 재귀적으로 그립니다.
    // drawCircle(x, y + d/4, d/2); // 아래쪽에 작은 원을 재귀적으로 그립니다.
  }
}
