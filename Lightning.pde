float startX =0;
float startY = 0;
float endX = 0;
float endY = 600;
float strokeWt = 10;
int rootNum = 0;

void setup()
{
  background(0);
  size(900,600);
  
  //soil and water
  noStroke();
  fill(100,75,50);
  rect(0,height/2-10,width,height);
  fill(0,50,200);
  rect(0, height*7/8, width, height);
}
void draw()
{
  stroke(230,230,0);
  //draws roots
  while (endY < 600) {
    endY = startY + (float)(Math.random()*.5);
    endX = startX + (float)(Math.random()*6) - 3;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    
    //narrows roots
    if (strokeWt > 1) {
      strokeWt = strokeWt - .0075;
      strokeWeight(strokeWt);
    }
  }
}
void mouseReleased()
{ 
  if (rootNum < 20) {
    //redraws upper background
    noStroke();
    fill(0);
    rect(0,0,width,290);  
    
    //plant stem
    strokeWeight(10+rootNum);
    stroke(100,100+rootNum*10,50);
    line(450,290,450,300-rootNum*10);
    
    //leaves
    if (rootNum > 5) {
      noStroke();
      fill(100,100+rootNum*10,50);
      ellipse(450-(5*rootNum),300-rootNum*10,10*rootNum,5*rootNum);
      ellipse(450+(5*rootNum),300-rootNum*10,10*rootNum,5*rootNum);
    }
    
    //new root
    startX = 450;
    startY = 300;
    endX = 450;
    endY = 300;
    strokeWt = 10;
    rootNum = rootNum+1;
}
}