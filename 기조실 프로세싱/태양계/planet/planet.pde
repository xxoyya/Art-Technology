Galaxy a, b; //star

int numPlanets = 8;
float[] planetSizes = {10, 15, 20, 25, 30, 35, 40, 45}; // 행성 크기
float[] orbitRadii = {50, 100, 150, 200, 250, 300, 350, 400}; // 궤도 반지름
float[] orbitSpeeds = {0.0025, 0.002, 0.00175, 0.00125, 0.00075, 0.0005, 0.00025, 0.0002}; // 궤도 속도
PVector[] planetPositions = new PVector[numPlanets]; // 행성 위치
color[] planetColors = {color(0, 0, 255), color(255, 165, 0), color(135, 206, 235), color(255, 255, 0),
                        color(255, 0, 0), color(0, 128, 0), color(0, 0, 128), color(0, 255, 0)}; // 행성 색상

void setup() {
  size(800, 800, P3D);
  for (int i = 0; i < numPlanets; i++) {
    planetPositions[i] = new PVector();
  }
  
  a = new Galaxy(1000);  
  b = new Galaxy(1000); 
  a.show();  
  b.show(); 
  
}

void draw() {
  background(0);
  lights();
  
  background(20); 
  fill(244,248,255);  
  a.galaxy(1,.01);  
  fill(245,230,130); 
  b.galaxy(1,.02); 
  //background star
  
  pushMatrix(); // 전체 시스템을 기울이기 위해 행렬을 저장
  translate(width/2, height/2); // 화면 중앙으로 이동
  
  // 전체 시스템을 기울입니다. 여기서 X축과 Y축을 기준으로 회전시키는 값을 조정하여 기울기를 조절할 수 있습니다.
  rotateX(-PI / 6); // X축을 기준으로 약간 기울임
  rotateY(PI / 6); // Y축을 기준으로 약간 기울임
  
  fill(255, 204, 0); // 태양 색상
  noStroke();
  sphere(40); // 태양 크기
  popMatrix();  // 태양
  
  for (int i = 0; i < numPlanets; i++) {
    float angle = millis() * orbitSpeeds[i];
    planetPositions[i].x = cos(angle) * orbitRadii[i];
    planetPositions[i].z = sin(angle) * orbitRadii[i];
    
    pushMatrix();
    translate(width/2, height/2);
    // 전체 시스템과 동일하게 기울임
    rotateX(-PI / 6); // X축을 기준으로 약간 기울임
    rotateY(PI / 6); // Y축을 기준으로 약간 기울임
    
    // 화면 중앙으로 이동한 후 행성의 위치로 이동
    translate(planetPositions[i].x, 0, planetPositions[i].z);
    fill(planetColors[i]); // 행성 색상
    noStroke(); // 행성에 흰색 선 없애기
    sphere(planetSizes[i]);
    // 토성 고리 추가
    if (i == 5) { // 토성인 경우
      noFill();
      stroke(200, 200, 0);
      ellipse(0, 0, planetSizes[i] * 3, planetSizes[i] * 1.5); // 고리 추가
    }
    popMatrix();
    
    noFill();
    stroke(255);
    pushMatrix();
    translate(width/2, height/2);
    // 전체 시스템과 동일하게 기울임
    rotateX(-PI / 6); // X축을 기준으로 약간 기울임
    rotateY(PI / 6); // Y축을 기준으로 약간 기울임
    rotateX(HALF_PI);
    ellipse(0, 0, orbitRadii[i]*2, orbitRadii[i]*2); // 궤도
    popMatrix();
  }
}
