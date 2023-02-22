float circleX;
float circleY;
float gap;
float directionX;
float directionY;
int points;
float rectW = 100;
float rectH = 20;
float rectX;
void setup() {
  size(540, 360);
  points = 0;
  circleX=300;
  circleY=0;
  gap=height-30;
  if(random(0,1)<=0.5){
    directionX = -2;
  }else{
    directionX = 2;
  }
  directionY = 1;

}
void draw() {
  rectX = constrain(mouseX, rectW/2,width-rectW/2);
  if(!mousePressed){
  background(50);
  }
  circleX = circleX + directionX;
  circleY = circleY + directionY;
  textAlign(CENTER);
  textSize(20);
  fill(0,255,0);
  text("POINTS:"+ points,width-75,30);
  if ((circleX>=width)||(circleX<=0)){
    directionX=directionX*-1;
  }
  if((circleY<=0)){
    directionY=directionY*-1;
  }
  if(circleY+10>= gap-rectH/2 && circleY <= gap+rectH/2 && circleX >= mouseX - rectW/2 && circleX <= mouseX + rectW/2){
    directionY = directionY +1;
    directionY=directionY*-1;
    points = points + 1;
    directionX = directionX + 1;
  }
  rectMode(CENTER);
  //ball
  fill(random(255), random(255), random(255));
  ellipse(circleX, circleY, 20, 20);
  //paddle
  fill(255);
  rect(rectX, gap, rectW, rectH);
  gameOver();
}
