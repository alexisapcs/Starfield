Particle[] stars;
int colors;

void setup()
{
  size(400, 400);
  noStroke();
  stars = new Particle[1000];
  for (int i = 0; i < stars.length; i++) {
    if (i == 0) {
      stars[0] = new OddballParticle();
    } else {
      stars[i] = new NormalParticle();
    }
  }
}
void draw()
{
  frameRate((int)(Math.random()*40)+20);
  //colors = color(196, 253, 255, 10);
  fill(color(0, 0, 0, 10));
  rect(0, 0, width, height);
  for (int i = 0; i < stars.length; i++) {
      stars[i].move();
      stars[i].show();
      
      if (stars[i].getY() > height || stars[i].getY() < 0 ) {
        if (stars[i].getX() > width || stars[i].getX() < 0) {
          stars[i].setVars(width/2, height/2);
        }
      }
      
  }
}
class NormalParticle implements Particle
{
  int myColor;
  public float myX, myY;
  double myAngle, mySpeed;
  
  NormalParticle(){
    myX = width/2;
    myY = height/2;
    myAngle = (Math.random()*360);
    myColor = color((int)(Math.random()*30)+225, 196, 255);
}

  public void move(){
    myX += Math.cos(myAngle);
    myY += Math.sin(myAngle);
  }

  public void show(){
    fill(myColor);
    //System.out.println(myColor);
    ellipse(myX, myY, 20, 20);
  }
  
  public float getX() {
    return myX;
  }
  
  public float getY() {
    return myY;
  }
  
  public void setVars(int x, int y) {
    myX = (float)x;
    myY = (float)y;
  }
}
interface Particle
{
  public void show();
  public void move();
  public float getX();
  public float getY();
  public void setVars(int x, int y);
}
class OddballParticle implements Particle
{
  int myColor;
  public float myX, myY;
  double myAngle, mySpeed;
  
  OddballParticle() {
    myX = width/2;
    myY = height/2;
    myAngle = (Math.random()*2);
    myColor = color(255, 255, 255);
  }
  
  public void move() {
    int xStep;
    int yStep;
    if (myX < 200) {
      xStep = (int)(Math.random()*3);
    } else 
    {
      xStep = (int)(Math.random()*3 - 3);
    }
    if (myY < 400) {
      yStep = (int)(Math.random()*3);
    } else 
    {
      yStep = (int)(Math.random()*3 - 3);
    }
    myX += xStep;
    myY += yStep;
    //keep in screen
    if (myX < 0)
      myX = width;
    if (myX > width) 
      myX = 0;
    if (myY < 0) 
      myY = height;
    if (myY > height) 
      myY = 0;
  }

  public void show() {
    fill(myColor);
    ellipse(myX, myY, 50, 50);
  }
  
  public float getX() {
    return myX;
  }
  
  public float getY() {
    return myY;
  }
  
  public void setVars(int x, int y) {
    myX = (float)x;
    myY = (float)y;
  }
}
class JumboParticle //uses inheritance
{
  //your code here
}

