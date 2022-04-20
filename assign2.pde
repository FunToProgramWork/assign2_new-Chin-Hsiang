PImage bg;
PImage soil;
PImage life;
PImage soldier;
PImage cabbage;
PImage groundhogDown;
PImage groundhogIdle;
PImage groundhogLeft;
PImage groundhogRight;
int x =0;
int lightPos = 240+25;


void setup() {
   size(640, 480, P2D);
   bg = loadImage("img/bg.jpg");
   soil = loadImage("img/soil.png");
   life= loadImage("img/life.png");
   soldier = loadImage("img/soldier.png");
   cabbage = loadImage("img/cabbage.png");
   groundhogDown = loadImage("img/groundhogDown.png");
   groundhogIdle = loadImage("img/groundhogIdle.png");
   groundhogLeft= loadImage("img/groundhogLeft.png");
   groundhogRight= loadImage("img/groundhogRight.png");

}

void draw() {
  image(bg,0,0);
  image(soil, 0,160);
  image(life,10,10);
  image(life,80,10);
  //image(life,150,10);
  image(soldier, x, 160);
  image(groundhogIdle,320,80);
  image(cabbage,random(0,560),240);
  if(keyPressed){
  if(key== 'a'){
  image( groundhogLeft ,320-80,80);
  }
  if(key== 's'){
  image( groundhogDown,320,80+80);
  }
  if(key== 'd'){
  image( groundhogRight ,320+80,80);
  }
  else{
     image( groundhogIdle,320,80);
  }
}
  
  x=x+1; 
  if ( x > 640)
    x = -80;
}
void keyPressed(){
  if(key== LEFT){
  }
}
void keyReleased(){
}
