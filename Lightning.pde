int startX = 0;
int startY = 300;
int endX = 0;
int endY = 300;

void setup()
{
  strokeWeight(5);
  background(0);
  size(900,600);
}
void draw()
{
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while (endX < width) {
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*20) - 10;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    
  System.out.println(startX);
  System.out.println(startY);
  System.out.println(endX);
  System.out.println(endY);
  }
}
void mousePressed()
{
  startX = 0;
  startY = height/2;
  endX = 0;
  endY = height/2;
}