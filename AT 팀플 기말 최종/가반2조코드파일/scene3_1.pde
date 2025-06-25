int box1,box1_1, box2,box2_1, box3,box3_1, box4, box4_1 ,sub_width;
int currentScene = 0;
int aCord = 0;
int bCord = 0;
float spiritY = -200; // Starting y position of mountainSpirit
PImage zara_walk2,tar2, mountainSpirit, backgroundwater, tar2_surprise;
PImage currentTar2; 
PImage backgroundwaterbb;
PImage sinsunside;
PImage[] walkImages;
int walkIndex = 0;
boolean increaseSpeed = false;

void scene3_1() {
  frameRate(30); 
  
  MINJI();
   
}

void MINJI() {
  if (currentScene == 0) {
    displayScene1();
  } else if (currentScene == 1) {
    displayScene2();
  } else if (currentScene == 2) {
    displayScene3();
  } else if (currentScene == 3) {
    displayScene4();
  } else if (currentScene == 4) {
    displayScene5();
  } else if (currentScene == 5) {
    displayScene6();
  } else if (currentScene == 6) {
    displayScene7();
  }
}

void scene3_1_mousePressed() {
  if (currentScene == 0 && mouseX > 130 && mouseX < 1000 && mouseY > 488 && mouseY < 567) {
    currentScene = 1;
  } else if (currentScene == 1 && mousePressed) {
    currentScene = 2;
  } else if (currentScene == 2 && mouseX > 130 && mouseX < 1000 && mouseY > 488 && mouseY < 567) {
    currentScene = 3;
  } else if (currentScene == 3 && mouseX > 130 && mouseX < 1000 && mouseY > 488 && mouseY < 567) {
    currentScene = 4;
  } else if (currentScene == 4 && mouseX > 130 && mouseX < 1000 && mouseY > 488 && mouseY < 567) {
    currentScene = 5;
  } else if (currentScene == 5 && mouseX > 130 && mouseX < 1000 && mouseY > 488 && mouseY < 567) {
    currentScene = 6;
  }else if (currentScene == 6 && mouseX > 130 && mouseX < 1000 && mouseY > 488 && mouseY < 567) {
    currentScene = 7;
    holeScene = 6;
  }
}

void displayScene1() {
  pushStyle();
  int currentAudioIndex = 18; 
  background(188);
  noStroke();
  image(backgroundwater, -1, -4, 1287, 733);
  if (spiritY >= height / 2 - 300) {
    currentTar2 = tar2_surprise;
  }
  image(currentTar2, 926, 357, 180, 230); 
  // Animate the mountain spirit descending
  if (spiritY < height / 2 - 300) { // Move mountainSpirit down until it reaches the center
    spiritY += 5;
  }
  image(mountainSpirit, 300, spiritY, 550, 550); // Display mountainSpirit
  if (currentAudioIndex == 18 ) { 
      playAudio(currentAudioIndex);
      currentAudioIndex++;
    }
   popStyle();
}

void displayScene2() {
  int currentAudioIndex = 19;
  background(166);
  image(backgroundwaterbb, -1, -4, 1287, 733);
  noStroke();
  image(mountainSpirit, aCord + 9, bCord + 27, 663, 682);
  fill(#000000, 70);
  rectMode(CENTER);
  rect(640,647,699,64,40,40,40,40);
  createFont("Yu Gothic UI Light",176, true);
  fill(255);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("Why dost thou seek to end thy own life?",643,649);
  if (currentAudioIndex == 19 ) { 
      playAudio(currentAudioIndex);
      currentAudioIndex++;
    }
}

void displayScene3() {
  int currentAudioIndex = 20; 
  background(188);
  image(backgroundwaterbb, -1, -4, 1287, 733);
  noStroke();
  image(tar2 , aCord + 828, bCord +223, 300, 458);
   fill(#000000, 70);
  rectMode(CENTER);
  rect(640,635,951,64,40,40,40,40);
  createFont("Yu Gothic UI Light",176, true);
  fill(255);
  textSize(40);
  text("I could not find the rabbit's liver to save the king...", 637,633);
  if (currentAudioIndex == 20 ) { 
      playAudio(currentAudioIndex);
      currentAudioIndex++;
    }
}
void displayScene4() {
  int currentAudioIndex = 21; 
  background(188);
  image(backgroundwaterbb, -1, -4, 1287, 733);
  noStroke();
  image(mountainSpirit, aCord + 9, bCord + 27, 663, 682);
  fill(#000000, 70);
  rectMode(CENTER);
  rect(650,605,1033,136,40,40,40,40);
  createFont("Yu Gothic UI Light",176, true);
  fill(255);
  textSize(40);
  text("I perceive thy loyalty is steadfast.",448,577);
  text("Yet, the king cannot be saved by the rabbit's liver alone.",637,628);
  if (currentAudioIndex == 21 ) { 
      playAudio(currentAudioIndex);
      currentAudioIndex++;
    }
}
void displayScene5() {
  int currentAudioIndex = 22; 
  background(188);
  image(backgroundwaterbb, -1, -4, 1287, 733);
  noStroke();
  image(tar2 , aCord + 828, bCord +223, 300, 458);
  fill(#000000, 70);
  rectMode(CENTER);
  rect(640,635,702,64,40,40,40,40);
  createFont("Yu Gothic UI Light",176, true);
  fill(255);
  textSize(40);
  text("What, then, must I do to save the king?",637,633);
  if (currentAudioIndex == 22 ) { 
      playAudio(currentAudioIndex);
      currentAudioIndex++;
    }
}


void displayScene6() {
  
  background(188);
  image(backgroundwaterbb, -1, -4, 1287, 733);
  noStroke();

  // Draw images using the updated 'a' value
  image(tar2 , aCord + 828, bCord +223, 300, 458); // zara_walk2 moves left with walking animation
  image(mountainSpirit, aCord + 9, bCord + 6, 740, 728); // mountainSpirit moves left
fill(#000000, 70);
  rectMode(CENTER);
  rect(634,634,373,64,40,40,40,40);
  createFont("Yu Gothic UI Light",176, true);
  fill(255);
  textSize(40);
  text("Come, follow me.", 637,633);
  
}


void displayScene7() {
  background(188);
  image(backgroundwaterbb, -1, -4, 1287, 733);
  noStroke();

  // Automate movement to the left until they are off-screen
  if (aCord > -width) { // Ensure they stop moving when they reach the left boundary
    if (increaseSpeed) {
      aCord -= 20; // Significantly increased speed after the text shows up
    } else {
      aCord -= 2; // Initial speed of left movement
    }
  }
  // Draw images using the updated 'a' value
  image(walkImages[walkIndex], aCord + 826, bCord + 300, 350, 350); // zara_walk2 moves left with walking animation
  image(sinsunside, aCord + 400, bCord +1, 600, 600); // mountainSpirit moves left
  // After displaying the text, set the flag to increase speed
  if (!increaseSpeed) {
    increaseSpeed = true;
  }
  // Update walk index to cycle through images
  if (frameCount % 5 == 0) { // Change image every 5 frames for smoother animation
    walkIndex = (walkIndex + 1) % walkImages.length;
  }
}
