class Walker{
  int myX, myY;


  Walker()
  {
  myX=195;
  myY=250;
  }
  void show()
  {

  image(img1,myX,myY,50,60);

  }

  void move(){
    if(mouseX>myX){
      myX=myX+(int)(Math.random()*5)-1;
  }else{
     myX=myX+(int)(Math.random()*5)-3;
  }
      if(mouseY>myY){
      myY=myY+(int)(Math.random()*5)-1;
  }else{
     myY=myY+(int)(Math.random()*5)-3;
  }
  }

}
PImage img;
PImage img1;

Walker[]colony;
void setup(){
  size(500,500);
  background(0);
  colony=new Walker[8];
for(int i =0;i<colony.length;i++){
  colony[i]=new Walker();
   img = loadImage("witchhh.png");
   img1 = loadImage("batbat.png");
}
}
void draw(){
  background(25,25,112);
  noStroke();

  fill(255);
  star(290,50, 10,20,5);
  star(350,300, 10,20,5);
  star(210,400, 10,20,5);
  star(50,300, 10,20,5);
  noStroke();
  fill(238,232,170);
  star(150,150, 10,20,5);
  star(450,90, 10,20,5);
  star(440,440, 10,20,5);
  star(250,230, 10,20,5);
  star(40,450, 10,20,5);
  noStroke();
  fill(240,230,140);
  ellipse(80,80,80,80);
  noStroke();
  fill(250,250,210);
  ellipse(60,70,20,20);
  ellipse(55,85,5,5);
    image(img,55,55,50,50);
  frameRate(10);


  frameRate(80);


for(int i =0;i<colony.length;i++){
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 colony[i].move();
 colony[i].show();
  }
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

