float startX =0;
float startY = 0;
float endX = 0;
float endY = 600;
float strokeWt = 20;

void setup()
{
  strokeWeight(20);
  background(0);
  size(900,600);
  fill(200,200,200);
  rect(0,height/2-20,width,height);
}
void draw()
{
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while (endY < 600) {
    endY = startY + (float)(Math.random()*.5);
    endX = startX + (float)(Math.random()*6) - 3;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    if (strokeWt > 1) {
      strokeWt = strokeWt - .015;
      strokeWeight(strokeWt);
    }
    //System.out.println(strokeWt);
    
  System.out.println(startX);
  System.out.println(startY);
  System.out.println(endX);
  System.out.println(endY);
  }
}
void mousePressed()
{
  startX = 450;
  startY = 300;
  endX = 450;
  endY = 300;
  strokeWt = 20;
}