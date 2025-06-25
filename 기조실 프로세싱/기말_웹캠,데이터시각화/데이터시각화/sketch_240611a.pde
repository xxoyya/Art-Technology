JSONObject json;
String interparkTime;
String yes24Time;
String currentTime;
PFont font;
PImage lucky;

void setup() {
  size(800, 500);
  font = createFont("Arial", 16, true);
  textFont(font);
  loadData();
  
  lucky = loadImage("lucky.png");
}

void draw() {
  background(255);
  
  stroke(#FA9CF1);
  fill(#FA9CF1, 80);
  ellipse(400, 250, 400, 300);
  
  image(lucky, 0, 0, 300, 200);
  image(lucky, 500, 300, 300, 200);
  textAlign(CENTER);
  
  fill(141, 65, 231);
  text("Interpark Time: " + interparkTime, width / 2, height / 2 - 40);
  fill(0, 123, 255);
  text("Yes24 Time: " + yes24Time, width / 2, height / 2);
  fill(0);
  text("Current Time (KST): " + currentTime, width / 2, height / 2 + 40);
  
  // 데이터 갱신 주기를 설정 (밀리초마다 갱신)
  if (frameCount % 6 == 0) {
    loadData();
  }
}

void loadData() {
  json = loadJSONObject("times.json");
  interparkTime = json.getString("interpark");
  yes24Time = json.getString("yes24");
  currentTime = json.getString("current_time");
}
