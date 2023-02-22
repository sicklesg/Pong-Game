void gameOver(){
  textAlign(CENTER);
  fill(255,0,0);
  if(circleY>height){
    textSize(50);
    text("GAME OVER", width/2, height/2);
    textSize(23);
    text("Press any key to start over", width/2,(height/2)+25);
  }
  if(circleY>height && keyPressed){
   setup();
  }
  
}
