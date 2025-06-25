//Version : 4.0 (전체 수정 시 + 1, 장면 수정 시 + 0.1) 2.0

//UP, DOWN arrows choose endings
//Hold the mouse when you click on the book

int holeScene = 0; // 상영할 장면 결정 (0 ~ 8)
int altEnding = 0; // 엔딩 결정
int cnt = 0;

import ddf.minim.*;

Minim minim;
AudioPlayer[] audioPlayers;
AudioPlayer Village_bgm;
AudioPlayer bgm1_1;
AudioPlayer end_bgm;

void chooseEnding(){
  pushStyle();
  if(keyCode == 'S'){
    holeScene = 5;
  } 
  
  
  popStyle();
}

void chooseScene(){
  pushStyle();
  
  fill(0);
  
  text("Press 1", 700, 220);
  if (keyCode == '1' && holeScene == 0) {
    holeScene = 1;
  }
  
  
  text("Press 2", 780, 220);
  if (keyCode == '2' && holeScene == 0) {
    holeScene = 2;
  }
  
  text("Press 3", 860, 220);
  if (keyCode == '3' && holeScene == 0) {
    holeScene = 3;
  }
  
  text("Press 4", 940, 220);
  if (keyCode == '4' && holeScene == 0) {
    holeScene = 4;
  }
  
  text("Press 5", 700, 260);
  if (keyCode == '5' && holeScene == 0) {
    holeScene = 5;
  }
  
  text("Press 6", 780, 260);
  if (keyCode == '6' && holeScene == 0) {
    holeScene = 6;
  }
  
  text("Press 7", 860, 260);
  if (keyCode == '7' && holeScene == 0) {
    holeScene = 7;
  }
  
    text("Press 8", 940, 260);
  if (keyCode == '8' && holeScene == 0) {
    holeScene = 8;
  }
  
  popStyle();
}


void setup(){
  size(1280,720); 
  minim = new Minim(this);
  audioPlayers = new AudioPlayer[23];

  for (int i = 0; i < audioPlayers.length; i++) {
    audioPlayers[i] = minim.loadFile("data/" + (i + 1) + ".mp3");
  }
  
  Village_bgm = minim.loadFile("Village_bgm.mp3");
  bgm1_1 = minim.loadFile("bgm1_1.mp3");
  end_bgm = minim.loadFile("end_bgm.mp3");
  
  //scene1
  //이미지 불러오기_scene1 1~6
  BGSea1 = loadImage("scene1_1/BGSea1.png");
  BGSea2 = loadImage("scene1_1/BGSea2.png");
  BGSea3 = loadImage("scene1_1/BGSea3.png");
  bookSoonjo = loadImage("scene1_1/Book.png");
  zara_normal = loadImage("scene1_1/zara_normal.png");
  zara_righthead = loadImage("scene1_1/zara_righthead.png");
  yongwang_normal = loadImage("scene1_1/yongwang_normal.png");
  yongwang_sick = loadImage("scene1_1/yongwang_sick.png");
  shinha1 = loadImage("scene1_1/shinha1.png");
  shinha2 = loadImage("scene1_1/shinha2.png");
  shinha3 = loadImage("scene1_1/shinha3.png");
  shinha4 = loadImage("scene1_1/shinha4.png");
  zara_swimming = loadImage("scene1_1/zara_swimming.png");
  zara_swimming2 = loadImage("scene1_1/zara_swimming2.png");
  zara_swimming3 = loadImage("scene1_1/zara_swimming3.png");
  zara_swimmingr = loadImage("scene1_1/zara_swimmingr.png");
  zara_swimming2r = loadImage("scene1_1/zara_swimming2r.png");
  zara_swimming3r = loadImage("scene1_1/zara_swimming3r.png");
  fishSoonjo = loadImage("scene1_1/fishSoonjo.png");
  //오디오 
  /*
  player = minim.loadFile("scene1_1/1.mp3");
  player = minim.loadFile("scene1_1/2.mp3");
  player = minim.loadFile("scene1_1/3.mp3"); */
  
  //이미지 불러오기_scene1 7~13
  sand1 = loadImage("scene1_2/sand1.jpg");
  sand2 = loadImage("scene1_2/sand2.jpg");
  sand3 = loadImage("scene1_2/sand3.jpg");
  underthesea = loadImage("scene1_2/바다속.png");
  turtle0 = loadImage("scene1_2/turtle0.png");
  turtle1 = loadImage("scene1_2/turtle1.png");
  turtleUP = loadImage("scene1_2/turtle등기본.png");
  turtleDOWN = loadImage("scene1_2/turtle등수영.png");
  turtleSur1 = loadImage("scene1_2/turtle_surprise.png");
  turtleSur2 = loadImage("scene1_2/turtle_surprise2.png");
  turtleR = loadImage("scene1_2/turtleR.png");
  rabbitL0 = loadImage("scene1_2/rabbitL0.png");
  rabbitL1 = loadImage("scene1_2/rabbitL1.png");
  rabbit = loadImage("scene1_2/rabbit.png");
  rabbit_ok0 = loadImage("scene1_2/rabbit_gunssak0.png");
  rabbit_ok1 = loadImage("scene1_2/rabbit_gunssak1.png");
  rabbit_sit = loadImage("scene1_2/rabbit_sitting.png");
  rabbit_sur0 = loadImage("scene1_2/rabbit_surprising0.png");
  rabbit_sur1 = loadImage("scene1_2/rabbit_surprising1.png");
  graveyard = loadImage("scene1_2/gravebackground.png");
  
  for (int i = 0; i < Rabbits.length; i ++ ) {
    Rabbits[i] = loadImage( "scene1_2/rabbit" + i + ".png" );
  }
  for (int i = 0; i < RabbitsL.length; i ++ ) {
    RabbitsL[i] = loadImage( "scene1_2/rabbitL" + i + ".png" );
  }
  for (int i = 0; i < Turtles.length; i ++ ) {
    Turtles[i] = loadImage( "scene1_2/turtle" + i + ".png" );
  }
  for (int i = 0; i < Turtles_s.length; i ++ ) {
    Turtles_s[i] = loadImage( "scene1_2/rabbit_riding_zara" + i + ".png" );
  }
  for (int i = 0; i < Turtles_W.length; i ++ ) {
    Turtles_W[i] = loadImage( "scene1_2/zaraWalk" + i + ".png" );
  }
  
  //이미지 불러오기_scene1 14~19
  sea = loadImage("scene1_3/sea.png");
  palace_1 = loadImage("scene1_3/palace_1.png");
  king_unhealthy2 = loadImage("scene1_3/king_unhealthy1.png");
  rabbitwalking_0 = loadImage("scene1_3/rabbit_standing.png");
  zara_walking1 = loadImage("scene1_3/zara_walking1.png");
  rabbit_surprising = loadImage("scene1_3/rabbit_surprising.png");
  rabbit_scream1 = loadImage("scene1_3/rabbit_scream1.png");
  rabbit_scream2 = loadImage("scene1_3/rabbit_scream2.png");
  jail = loadImage ("scene1_3/jail.png");
  jail_longer = loadImage ("scene1_3/jail_longer.png");
  
  //이미지 불러오기_scene1 20~24
  talkback = loadImage("scene1_4/용왕토끼대화.png"); 
  prison = loadImage("scene1_4/쇠창살.png");
  turtle = loadImage("scene1_4/꼿꼿돌린자라.png");
  king = loadImage("scene1_4/용왕클로즈업.png");
  jara = loadImage("scene1_4/자라클로즈업.png");
  jara2 = loadImage("scene1_4/자라클로즈업2.png");
  prisonout = loadImage("scene1_4/감옥탈출.png");
  underthesea = loadImage("scene1_4/바다속.png");
  ground = loadImage("scene1_4/육지.jpg");
  turtle2 = loadImage("scene1_4/납작자라.png");
  rabbitrun = loadImage("scene1_4/도망토끼.png");
  for (int i =0; i <Turtle_s.length; i++){
    Turtle_s[i] = loadImage("scene1_4/어부바" + i +".png");
  }
  palace_2 = loadImage("scene1_4/palace_22.png");
  rabbit_scream0 = loadImage("scene1_4/rabbit_scream0.png");
  king_unhealthy = loadImage("scene1_4/king_unhealthy2.png");
  //end of scene1
  
  //scene2
  //배경 이미지 로드

  zara = loadImage("scene2/zaraR.png");
  rabbit_scene2 = loadImage("scene2/rabbitL0.png");
  rabbitJump = loadImage("scene2/rabbit_surprising.png");
  zaraSurprised = loadImage("scene2/zara_surpriseR.png");
  
  scene2_bg1=loadImage("scene2/scene2_1st_background.png");
  scene2_bg2=loadImage("scene2/scene2_2nd_background.png");
  scene2_bg3=loadImage("scene2/scene2_3rd_background.png");
  scene2_bg4=loadImage("scene2/scene2_4th_background.png");  //용궁내부로 바꾸기
  
  sinha1=loadImage("scene2/sinha1.png");
  sinha2=loadImage("scene2/sinha2.png");
  sinha3=loadImage("scene2/sinha3.png");
  sinha4=loadImage("scene2/sinha4.png");
  scene2_sub_font = createFont("Yu Gothic UI Light", 44, true);
  cut_mode=0;
  sub_mode=0;

//변수 초기화
  scene2_1=1;
  scene2_2=2;
  scene2_3=3;
  scene2_4=4;
  scene2_5=5;

//자막박스 리스트 생성
  scene2_sub_box_list[1]=scene2_1_sub_box_list;
  scene2_sub_box_list[2]=scene2_2_sub_box_list;
  scene2_sub_box_list[3]=scene2_3_sub_box_list;
  scene2_sub_box_list[4]=scene2_4_sub_box_list;
  scene2_sub_box_list[5]=scene2_5_sub_box_list;

//리스트 초기화
  subtitle[1]=scene2_1_sub;
  subtitle[2]=scene2_2_sub;
  subtitle[3]=scene2_3_sub;
  subtitle[4]=scene2_4_sub;
  subtitle[5]=scene2_5_sub;

  //cut2
  for ( int i = 0; i<zarawalk.length; i++) {
    zarawalk[i] = loadImage("scene2_2/zara_walk"+i+".png");
  }
  rock = loadImage("scene2_2/rock.png");
  bunnyhop = loadImage("scene2_2/bunnyhop.png");
  sky = loadImage("scene2_2/sky.png");
  zarasad = loadImage("scene2_2/zara_sad.png");
  zaracry = loadImage("scene2_2/zara_cry.png");
  speedline = loadImage("scene2_2/speedline.png");
  for (int i = 0; i<zara_die.length; i++){
    zara_die[i] = loadImage("scene2_2/zara_die"+i+".png");
  }
  
  //분기점으로 돌아가기
  backToChoice = loadImage("scene2/backToChoice.png");
  //end of scene2
  

  //Scene 3-1
  backgroundwater = loadImage("scene3_1/backgroundwater.jpg");
  tar2 = loadImage("scene3_1/tar2.png");
  mountainSpirit = loadImage("scene3_1/deity.png");
  tar2_surprise = loadImage("scene3_1/tar2_surprise.png");
  backgroundwaterbb=loadImage("scene3_1/backgroundwaterbb.png");
  zara_walk2 = loadImage("scene3_1/zara_walk2.png");
  sinsunside=loadImage("scene3_1/sinsunside.png");
  currentTar2 = tar2; // Initially set to normal tar2 image
  walkImages = new PImage[4];
  walkImages[0] = loadImage("scene3_1/zaraWalk2.png"); // Initially set to normal zara_walk2 image
  walkImages[1] = loadImage("scene3_1/zaraWalk1.png");
  walkImages[2] = loadImage("scene3_1/zaraWalk2.png");
  walkImages[3] = loadImage("scene3_1/zaraWalk3.png");
  
  
  //Scene 3_2
  img = loadImage("scene3_2/ab.png");
  book = loadImage("scene3_2/책표지.png");
  recipe = loadImage("scene3_2/레시피.png");
  recipe2 = loadImage("scene3_2/recipe.png");
  mirrors = loadImage("scene3_2/mirrorking0.png");
  mirrors2 = loadImage("scene3_2/mirrorking1.png");
  //title = loadImage("title.png");
  cloud = loadImage("scene3_2/side.png");
  back = loadImage("scene3_2/next.png");
  
  for (int i = 0; i < walk.length; i++) {
      walk[i] = loadImage("scene3_2/walk" + i + ".png");
    }
  for (int i = 0; i < bSet.length; i++) {
    bSet[i] = loadImage("scene3_2/b" + i + ".png");
  }
  for (int i = 0; i < mirrorking.length; i++) {
    mirrorking[i] = loadImage("scene3_2/mirrorking" + i + ".png");
  }
  
  //Scene 3_3
  
  //여기 추가 
  recipebook = loadImage("scene3_3/recipebook.png");
  recipepage1 = loadImage("scene3_3/recipepage1.png");
  recipepage2 = loadImage("scene3_3/recipepage2.png");
  backs = loadImage("scene3_3/backs.png");
  
  sample = loadImage("scene3_3/potion1.png");
  patrick = loadImage("scene3_3/potion2.png");
  potion3 = loadImage("scene3_3/potion3.png");
  potion4 = loadImage("scene3_3/potion4.png");

  //herb
  goldenFlower = loadImage("scene3_3/herb2.png");
  mandrake = loadImage("scene3_3/herb3.png");
  herb4 = loadImage("scene3_3/herb4.png");
  raspberry = loadImage("scene3_3/herb1.png");
  //bowl
  mul1 = loadImage("scene3_3/mul1.png");
  mul2 = loadImage("scene3_3/mul2.png");
  mul3 = loadImage("scene3_3/mul3.png");
  mul4 = loadImage("scene3_3/mul4.png");
  
  trash = loadImage("scene3_3/trash.png");
  bowl = loadImage("scene3_3/bowlTwo.png");
  julgu = loadImage("scene3_3/julgu.png");
  plate = loadImage("scene3_3/plate.png");
  medRoom = loadImage("scene3_3/hanyakbang.png");
  initializeIngredients(); 
  
  initializeIngredients(); 
  bowlX = width / 2 - 500; 
  bowlY = height / 2 - 50;
  bowlW = 300;
  bowlH = 200;

  plateX = width / 2 + 200; 
  plateY = height / 2 + 40;
  plateW = 300;
  plateH = 150;
  
  //Scene 3_4
  
  shop = loadImage("scene3_4/shop.png");
  palace = loadImage("scene3_4/palace.png");
  king2 = loadImage("scene3_4/king2.png");
  king1 = loadImage("scene3_4/king1.png");
  babyking = loadImage("scene3_4/babyking.png");
  palacezoom = loadImage("scene3_4/palacezoom.png");
  mirror = loadImage("scene3_4/mirror.png");
  transform = loadImage("scene3_4/transform.png");
  hair = loadImage("scene3_4/hair.png");
  brain = loadImage("scene3_4/brain.png");
  recovery = loadImage("scene3_4/recovery.png");
  back2= loadImage("scene3_4/back.png");
  nextTo = loadImage("scene3_4/nextTo.png");
  backToPotion = loadImage("scene3_4/backToPotion.png");
  mirror_text1 = loadImage("scene3_4/mirror_text1.png");
  mirror_text2 = loadImage("scene3_4/mirror_text2.png");
 
  curtain = loadImage("scene3_4/curtain.jpg");
  theEnd = loadImage("scene3_4/ending.png");
  
  fireworks = new ArrayList<Firework>();
  
  if (run) {
    colorMode(HSB, 360, 100, 100, 255); // HSB 모드로 설정
  }
  
  //엔딩크레딧 이미지
  zara_ghost = loadImage("credit_data/zara_ghost.png");
  zara_ghost_red = loadImage("credit_data/zara_ghost_red.png");
  BGsea1 = loadImage("credit_data/BGSea1.png");
  team2BG = loadImage("credit_data/team2BG.png");
  end_shop = loadImage("credit_data/shop.png");
  for( int i = 0 ; i < zara_swimming_end.length; i++){
    zara_swimming_end[i]  = loadImage("credit_data/zara_swimming_end"+i+".png");
  }
  for( int i = 0 ; i < zara_swimming_end.length; i++){
    zara_swimming_end_red[i]  = loadImage("credit_data/zara_swimmingR_end_red"+i+".png");
  }
  zara_back = loadImage("credit_data/back.png");
  zara_back_red = loadImage("credit_data/zara_back_red.png");
  credit_1 = loadImage("credit_data/credit_1.png");
  credit_2 = loadImage("credit_data/credit_2.png");
  credit_3 = loadImage("credit_data/credit_3.png");
  credit_BG1 = loadImage("credit_data/credit_BG1.png");
  credit_BG2 = loadImage("credit_data/credit_BG2.png");
  credit_jyw = loadImage("credit_data/credit_jyw.png");
  credit_keh = loadImage("credit_data/credit_keh.png");
  credit_ksh = loadImage("credit_data/credit_ksh.png");
  credit_ksj = loadImage("credit_data/credit_ksj.png");
  credit_lge = loadImage("credit_data/credit_lge.png");
  credit_lja = loadImage("credit_data/credit_lja.png");
  credit_ysj = loadImage("credit_data/credit_ysj.png");
  credit_jsh = loadImage("credit_data/credit_jsh.png");
  credit_hes = loadImage("credit_data/credit_hes.png");
  credit_pmj = loadImage("credit_data/credit_pmj.png");
  credit_pks = loadImage("credit_data/credit_pks.png");
  thumbsup_zara = loadImage("credit_data/thumbsup_zara.jpg");
  voice_credit = loadImage("credit_data/voice_credit.png");
  end_pic = loadImage("credit_data/end_pic.png");

}

void playAudio(int index) {
  if (audioPlayers[index].isPlaying()) {
    audioPlayers[index].rewind();
  } else {
    audioPlayers[index].play();
  }
}
