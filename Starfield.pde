NormalParticle[] stars;

void setup()
{
  size(300, 300);
  stars = new NormalParticle[10];
  for (int i = 0; i < stars.length; i++) {
      stars[i] = new NormalParticle();
    }
}
void draw()
{
  for (int i = 0; i < stars.length; i++) {
      stars[i].move();
      stars[i].show();
    }
}
class NormalParticle
{
  int myColor;
  double myX, myY, myAngle, mySpeed;
  
  NormalParticle(){
    myX = 0;
    myY = 0;
    myAngle = (Math.random()*360);
    myColor = color((int)(Math.random()*10), (int)(Math.random()*10), (int)(Math.random()*10));
  }

  void move(){
    myX += cos(myAngle);
    myY += cos(myAngle);
  }

  void show(){
    fill(myColor);
    ellipse(myX, myY, 20, 20);
  }
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}

