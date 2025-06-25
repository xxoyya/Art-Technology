//자막 박스 함수
void sub_box(int sub_width){    
  pushStyle();
  noStroke();
  fill(#000000, 70);
  rectMode(CENTER);
  rect(640,640,sub_width,60,28);
  popStyle();
}



// 각 컷 자막 넘김 함수                     scene2_0_sub_0            ex)scene2_1_sub_3  ----->씬2 1컷 3번째 자막
void scene2_1_sub(){
  pushStyle();
  sub_box(scene2_sub_box_list[cut_mode][sub_mode]);
  textFont(scene2_sub_font);
  textAlign(CENTER,CENTER);
  fill(255);
  text(scene2_1_sub_list[sub_mode],640,640);

  popStyle();
}

void scene2_2_sub(){
  pushStyle();
  sub_box(scene2_sub_box_list[cut_mode][sub_mode]);
  if(cut_mode == 2 && sub_mode == 6){
    pushStyle();
    noStroke(); 
    fill(#000000, 70);
    rectMode(CENTER);
    rect(640,640,930,120,28);
    popStyle();
  }
  textFont(scene2_sub_font);
  textAlign(CENTER,CENTER);
  fill(255);
  text(scene2_2_sub_list[sub_mode],640,640);
  popStyle();
}
void scene2_3_sub(){
  pushStyle();
  sub_box(scene2_sub_box_list[cut_mode][sub_mode]);
  textFont(scene2_sub_font);
  textAlign(CENTER,CENTER);
  fill(255);
  text(scene2_3_sub_list[sub_mode],640,640);
  popStyle();
}
void scene2_4_sub(){
  pushStyle();
  sub_box(scene2_sub_box_list[cut_mode][sub_mode]);
  textFont(scene2_sub_font);
  textAlign(CENTER,CENTER);
  fill(255);
  text(scene2_4_sub_list[sub_mode],640,640);
  popStyle();
}
 

//자막 넘김 함수
void keyPressed() {
  if (key==CODED) {
    if (keyCode == RIGHT && cut_mode <= 5) {
      sub_mode+=1;
      prevTime = millis();
      if (subtitle[cut_mode]<=sub_mode) {
        cut_mode+=1;
        sub_mode=0;

      } 
    }
  }
  if (holeScene == 3 && key == ' ') { // 스페이스 바를 눌렀을 때
    y = y-ydir;
  }
  if(holeScene == 7) scene3_keyPressed();
}


void mousePressed(){
  if(holeScene == 5){
    scene3_1_mousePressed();  
  }
  
  if(holeScene == 7){
    scene3_3mousePressed();
  }
}

void mouseReleased(){
  if(holeScene == 7){
    scene3_3mouseReleased();
  }
}

void mouseClicked(){
  if(holeScene == 6){
    scene3_2mouseClicked();
  }
}
