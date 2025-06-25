void draw(){
  //scene1 넘기기
  if (holeScene == 0) scene1_1();
  if (holeScene == 1) scene1_2();
  if (holeScene == 2) scene1_3();
  if (holeScene == 3) scene1_4();
  //end of scene1
  
  //scene2
  if (holeScene == 4) scene2();
  //end of scene2
  
  //scene3
  if(holeScene == 5) scene3_1();
  if(holeScene == 6) scene3_2();
  if(holeScene == 7) scene3_3();
  if(holeScene == 8) scene3_4();
  if(holeScene == 9) scene3_4();
  //end of scene3
  
  //endCredit
  if(holeScene == 10) endCredit();
  
}
