
PImage medRoom, potion3, potion4, sample, patrick, bowl, goldenFlower, mandrake, raspberry, plate, julgu, herb4, mul1, mul2, mul3, mul4, trash, recipepage1, recipepage2, recipebook, backs;
int sceneOne_Value;
int modeScene3;
int scene3_cut = 0;
boolean potionTwo= false;
boolean potionThree = false;

ArrayList<Ingredient> ingredients;
Food resultFood;
float bowlX, bowlY, bowlW, bowlH, plateX, plateY, plateW, plateH;
String message = "";
String messages = "";
String messagess = "";

boolean isMixing = false; 
int mixFrameCount = 0; 


void scene3_3() {
  pushStyle();
  
  background(255);
  image(medRoom, 0, 0, 1300, 800);
  
  fill(200, 200, 200, 164);
  rect(246, 146, 402, 217);
  
  if(scene3_cut == 0){
    sceneOne();
  } else if(scene3_cut == 1){
    recipepage1();
  } else if(scene3_cut ==2){
    recipepage2();
  }
  
  

  
  popStyle();
}

class Ingredient {
  
  PImage i;
  float x, y, w, h;
  color col;
  boolean dragging = false;
  boolean visible = true;

  Ingredient(float x, float y, float w, float h, color col, PImage i) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.col = col;
    this.i = i;
  }

  void display() {
    pushStyle();
    if (visible) {
      fill(col);
      image(i, x, y, w, h);
    }
    popStyle();
  }

  void press() {
    pushStyle();
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h && visible) {
      dragging = true;
    }
    popStyle();
  }

  void release() {
    pushStyle();
    dragging = false;
    popStyle();
  }

  void drag() {
    pushStyle();
    if (dragging) {
      x = mouseX - w / 2;
      y = mouseY - h / 2;
    }
    popStyle();
  }

  boolean isInBowl() {

    return x > bowlX && x + w < bowlX + bowlW && y > bowlY && y + h < bowlY + bowlH;

  }
  
}

class Food {
  PImage im;
  float x, y, w, h;
  color col;

  Food(float x, float y, float w, float h, color col, PImage im) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.col = col;
    this.im = im;
  }

  void display() {
    pushStyle();
    fill(col);
    image(im, x, y, w, h);
    popStyle();
  }
  
}
void sceneOne() {
  pushStyle();
  fill(200);
  image(bowl, bowlX, bowlY, bowlW + 50, bowlH + 100); 
  image(recipebook, bowlX+450, bowlY+150, 200, 170);

  fill(255);  
  stroke(0);  

  for (Ingredient ingredient : ingredients) {
    ingredient.display(); 
    ingredient.drag(); 
  }


  image(plate, plateX, plateY+45, plateW, plateH);

  if (isMixing) {
    animateMixing();
  } else {
    if (resultFood != null) {
      resultFood.display(); 
    }
  }

  noStroke(); 
  fill(0);
  textSize(24);
  text(message, 50, height - 50);
  fill(255);
  textSize(24);
  text(messages, width-460, height - 120);
  fill(255);
  textSize(24);
  text(messagess, width-360, height - 120);

  float mixTextWidth = textWidth("Mix");
  float resetTextWidth = textWidth("Reset");

  fill(150);
  rect(bowlX + 100 - mixTextWidth / 2 +15, bowlY + bowlH + 40, mixTextWidth + 40, 50);  
  fill(0);
  text("Mix", bowlX + 100 - mixTextWidth / 2, bowlY + bowlH + 50);

  fill(150);
  rect(bowlX + 210 - resetTextWidth / 2 + 15, bowlY + bowlH + 40, resetTextWidth + 40, 50); 
  fill(0);
  text("Reset", bowlX + 210 - resetTextWidth / 2, bowlY + bowlH + 50);

  popStyle();
}

void scene3_3mousePressed() {
  pushStyle();
  if (mouseX > bowlX + 100 - textWidth("Mix") / 2 - 10 && mouseX < bowlX + 100 + textWidth("Mix") / 2 + 10 && mouseY > bowlY + bowlH + 20 && mouseY < bowlY + bowlH + 70) {
    isMixing = true; 
    mixFrameCount = 0; 
  } else if (mouseX > bowlX + 210 - textWidth("Reset") / 2 - 10 && mouseX < bowlX + 210 + textWidth("Reset") / 2 + 10 && mouseY > bowlY + bowlH + 20 && mouseY < bowlY + bowlH + 70) {
    resetGame();
  } else {
    for (Ingredient ingredient : ingredients) {
      ingredient.press();
    }
  }
  
  if(mouseX > bowlX+450 && mouseX < bowlX+450+200 && mouseY > bowlY+150 && mouseY < bowlY+150+170){
    scene3_cut = 1;
  } else if(mouseX > width - 225- 25 && mouseX < width - 225 + 25 && mouseY > height - 150 - 25 && mouseY < height - 150 + 25 && scene3_cut == 1){
    scene3_cut = 2;
  } else if(mouseX > width - 225- 25 && mouseX < width - 225 + 25 && mouseY > height - 150 - 25 && mouseY < height - 150 + 25 && scene3_cut == 2){
    scene3_cut = 0;
  }
  
  if (plateX + plateW / 2 - 75 < mouseX && mouseX < plateX + plateW / 2+75 && plateY + plateH / 2 - 500< mouseY && mouseY< plateY + plateH / 2 -100){
    cnt = 3;
  }
  popStyle();
}

//레시피
void recipepage1(){
  background(255);
  image(medRoom, 0, 0, 1300, 800);
  imageMode(CENTER);
  image(recipepage1, width/2, height/2, 600, 600 );
  image(backs, width - 225, height - 150, 50, 50);

}
void recipepage2(){
  background(255);
  image(medRoom, 0, 0, 1300, 800);
  imageMode(CENTER);
  image(recipepage2, width/2, height/2, 600, 600 );
  image(backs, width - 225, height - 150, 50, 50);

}

void scene3_3mouseReleased() {
  pushStyle();
  for (Ingredient ingredient : ingredients) {
    ingredient.release();
  }
  popStyle();
}

void scene3_keyPressed(){
  pushStyle();
  if(holeScene == 7){
    if(keyCode == 'S' && potionTwo == true){
      holeScene = 8;
    } else if(keyCode == 'T' && potionThree == true){
      holeScene = 9;
    }
  }
  popStyle();
}

void initializeIngredients() {
  pushStyle();
  ingredients = new ArrayList<Ingredient>();
  ingredients.add(new Ingredient(50, 150, 100, 100, color(255, 149, 52), goldenFlower)); // 2
  ingredients.add(new Ingredient(150, 150, 100, 100, color(0, 255, 0), mandrake));//3
  ingredients.add(new Ingredient(250, 150, 100, 100, color(255,0,0), raspberry));//1
  ingredients.add(new Ingredient(350, 150, 100, 100, color(0, 0, 255), herb4));//4
  
  ingredients.add(new Ingredient(50, 50, 100, 100, color(0, 255, 0), mul3));
  ingredients.add(new Ingredient(150, 50, 100, 100, color(255, 0, 0), mul1));
  ingredients.add(new Ingredient(250, 50, 100, 100, color(255, 149, 52), mul2));
  ingredients.add(new Ingredient(350, 50, 100, 100, color(0, 0, 255), mul4));
    message = "";
    messages="";
    popStyle();
}

void resetGame() {
  pushStyle();
  for (Ingredient ingredient : ingredients) {
    ingredient.visible = true; 
  }
  resultFood = null; 
  message = ""; 
  messages="";
  initializeIngredients(); 
  popStyle();
}

void checkRecipe() {
  pushStyle();
  int countRed = 0, countBlue = 0, countGreen = 0, countYellow = 0;
  for (Ingredient ingredient : ingredients) {
    if (ingredient.isInBowl()) {
      if (ingredient.col == color(255, 0, 0)) countRed++;
      else if (ingredient.col == color(0, 0, 255)) countBlue++;
      else if (ingredient.col == color(0, 255, 0)) countGreen++;
      else if (ingredient.col == color(255, 149, 52)) countYellow++;
      ingredient.visible = false; 
    }
  }

  if (countRed == 2 && countBlue == 0 && countGreen == 0 && countYellow ==0 ) {
    resultFood = new Food(plateX + plateW / 2 - 75, plateY + plateH / 2 - 75, 150, 150, color(255, 105, 180), sample); 
    message = "RED POTION";
    messages = "Oops, it's a fake potion.. .. Shall we try again? ";
  } else if (countBlue == 0 && countRed == 0 && countGreen == 0 && countYellow ==2) {
    resultFood = new Food(plateX + plateW / 2 - 75, plateY + plateH / 2 - 75, 150, 150, color(0, 191, 255), patrick); 
    message = "YELLOW POTION";
    messagess = "press S button";
    potionTwo = true;
  } else if (countGreen == 2 && countRed == 0 && countBlue == 0 && countYellow ==0) {
    resultFood = new Food(plateX + plateW / 2 - 75, plateY + plateH / 2 - 75, 150, 150, color(0, 100, 0), potion3); 
    message = "GREEN POTION";
    messagess = "press T button";
    potionThree = true;
  } else if (countGreen == 0 && countRed == 0 && countBlue == 2 && countYellow ==0) {
    resultFood = new Food(plateX + plateW / 2 - 75, plateY + plateH / 2 - 75, 150, 150, color(0, 100, 0), potion4); 
    message = "BLUE POTION";
    messages = "Oh, it's a fake potion.. .. Shall we try again?";
  } else if (countRed + countBlue + countGreen == 0) {
    message = "There is nothing inside the bowl";
    resultFood = null;
  } else {
    resultFood = new Food(plateX + plateW / 2 - 75, plateY + plateH / 2 - 75, 150, 150, color(169, 169, 169), trash); 
    message = "Oops......We made trash";
  }
  popStyle();
}

void animateMixing() {
  pushStyle();
  fill(100, 100, 250);
  float rectY = bowlY - 80 + 20 * sin(PI * mixFrameCount / 10.0);
  image(julgu, bowlX + bowlW / 2 - 100, rectY, 250, 250);

  mixFrameCount++;
  if (mixFrameCount >= 60) { 
    isMixing = false;
    checkRecipe(); 
  }
  popStyle();
}
