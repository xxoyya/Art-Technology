PImage dyingzara;
PImage sky;
PImage speedline;
int oe_time = 4000;
int arcY = 800;
int zara_die_size = 400;
PImage [] zara_die = new PImage [5];

void dyingzara(){
  pushStyle();
  rectMode(CORNER);
  if(millis() - prevTime < oe_time){
    background(0);
    image(speedline,0,0,1280,720);
    pushStyle();
    imageMode(CENTER);
    image(zara_die[zara_die_imageIndex],640,360,zara_die_size,zara_die_size);
    if(zara_die_imageIndex <= 3){
      zara_die_imageIndex += 1;
    }
    popStyle();
    zara_die_size += 5;
  }else if(millis() - prevTime <oe_time + 500){
    fill(255,0,0);
    rect(0,0,1280,720);
  }else if(millis() - prevTime <oe_time + 2000){
    fill(0);
    rect(0,0,1280,720);
  }else if(millis() - prevTime <oe_time + 5000){
    image(sky,0,0,1280,720);
    noFill();
    strokeWeight(800);
    arc(640,360,2200,arcY,0,PI);
    arc(640,360,2200,arcY,PI,TWO_PI);
    arcY+=15;
  }else if(millis() - prevTime <oe_time + 8000){
    image(sky,0,0,1280,720);
    noFill();
    strokeWeight(800);
    arc(640,360,2200,arcY,0,PI);
    arc(640,360,2200,arcY,PI,TWO_PI);
    arcY-=15;
  }else if(millis() - prevTime <oe_time + 11000){
    image(sky,0,0,1280,720);
    noFill();
    strokeWeight(800);
    arc(640,360,2200,arcY,0,PI);
    arc(640,360,2200,arcY,PI,TWO_PI);
    arcY+=10;
  }else if(millis() - prevTime <oe_time + 14000){
    image(sky,0,0,1280,720);
    noFill();
    strokeWeight(800);
    arc(640,360,2200,arcY,0,PI);
    arc(640,360,2200,arcY,PI,TWO_PI);
    arcY-=10;
  }else if(millis() - prevTime <oe_time + 17000){
    image(sky,0,0,1280,720);
    noFill();
    strokeWeight(800);
    arc(640,360,2200,arcY,0,PI);
    arc(640,360,2200,arcY,PI,TWO_PI);
    arcY+=5;
  }else if(millis() - prevTime <oe_time + 20000){
    image(sky,0,0,1280,720);textFont(scene2_sub_font);
    noFill();
    strokeWeight(800);
    arc(640,360,2200,arcY,0,PI);
    arc(640,360,2200,arcY,PI,TWO_PI);
    arcY-=5;
  }else if(millis() - prevTime <= oe_time + 22000){
    fill(0);
    rect(0,0,1280,720);
  }
  if(millis() - prevTime > oe_time + 22000){
    cut_mode+=1;
    sub_mode=0;
  }
  popStyle();
}
