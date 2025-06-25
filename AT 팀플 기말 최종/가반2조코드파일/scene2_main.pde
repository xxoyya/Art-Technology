//변수, 폰트, 이미지, 사운드 선언

//폰트선언
PFont scene2_sub_font;

//배경 이미지
PImage scene2_bg1, scene2_bg2, scene2_bg3, scene2_bg4;
//cut1 image
PImage zara, zaraSurprised, rabbit_scene2, rabbitJump, background;

//cut2 image
PImage [] zarawalk = new PImage[7];
PImage rock;
PImage bunnyhop;
PImage zarasad;
PImage zaracry;
PImage effect;

//cut4 image
PImage sinha1, sinha2, sinha3, sinha4;

//cut1변수
int rx = 500;
int ry = 220;
int jump = -30;

int scene = 0;


//cut2 변수선언
int prevTime = 0;
int cut2zaraX = 0;
int imageIndex = 0;
int zara_die_imageIndex = 0;

//float gravity_scene2 = 5;
float speed = 60;
float cut2bunnyX = 200;
float cut2bunnyY = 350;

//컷 별 변수 저장할 변수
int cut_mode;

//컷 별 변수 선언()
int scene2_0, scene2_1, scene2_2, scene2_3, scene2_4, scene2_5;

//자막 관련 함수
int sub_cutmode;//자막을 각 컷 별로 분류
int sub_mode;//각 컷에 들어갈 자막
int []subtitle=new int[6];    //자막 갯수 리스트(컷 넘기려고 만들었음)

//각 컷 자막 갯수
int scene2_1_sub=10;
int scene2_2_sub=11;
int scene2_3_sub=1;
int scene2_4_sub=3;
int scene2_5_sub=1;

//각 컷 자막 박스 크기 저장용 리스트
int [][] scene2_sub_box_list=new int [6][11];


//각 컷 자막
//1컷
String [] scene2_1_sub_list={"Rabbit, we have arrived.", "Let's take your liver now.", "You foolish turtle,", "how can I take out my liver from my body?", "What do you mean by that? ",
  "Are you saying you lied?", "You deceived me and brought me to the Dragon Palace", "You sly turtle.", "I have no liver for you", "Farewell!"};
//2컷
String [] scene2_2_sub_list={"stop running!", "Halt!", "The turtle, losing the rabbit from sight,", "despairingly began to cry.", "Oh no, sob sob…, I lost the rabbit..", "I can not confront the Dragon King..",
  "A servant who cannot save the king he serves \n has no purpose to breath.", "Oh... Dragon King...", "This turtle shall sacrifice his life for his sins,", "so please, forgive your worthless servant..",
  "Press S to enter secret ending, or keep pressing right "};
//3컷
String [] scene2_3_sub_list={""};
//4컷
String [] scene2_4_sub_list={"The Dragon King, unable to eat the rabbit's liver,", "eventually met his end.", "How tragic..."};

//각 컷 자막 박스 크기 리스트
int [] scene2_1_sub_box_list={560, 500, 415, 850, 570, 520, 1100, 360, 480, 220};
int [] scene2_2_sub_box_list={300, 140, 750, 550, 720, 740, 0, 430, 860, 840, 0};
int [] scene2_3_sub_box_list={0};
int [] scene2_4_sub_box_list={1000, 570, 340};
int [] scene2_5_sub_box_list={400};


//드로우 함수(컷 별 장면 함수 넣는 곳)
void scene2() {
  if (cut_mode==0) {
    scene2_0();
  } else if (cut_mode==1) {
    scene2_1();
  } else if (cut_mode==2) {
    scene2_2();
  } else if (cut_mode==3) {
    scene2_3();
  } else if (cut_mode==4) {
    scene2_4();
  }
}
