//NormalParticle[] aBunch = new NormalParticle;
Particle[] aBunch = new Particle[1000];
void setup()
{
  size(300,300);
  for (int i = 0; i < aBunch.length; i++)
  {
    aBunch[i] = new Normal();
  }
  aBunch[0] = new JumboParticle();
  aBunch[2] = new OddballParticle();
}


void draw()
{
  background(200);
  for (int i = 0; i < aBunch.length; i++)
  {
  aBunch[i].move();
  aBunch[i].show();
  }
}


class Normal implements Particle
{
  double myX, myY, mySpeed, myDir;
  int myColor, myOpac;
  Normal()
  {
  myX = 150;
  myY = 150;
  mySpeed = Math.random()*10;
  myDir = Math.random()*2*Math.PI;
  fill(0);
  }
  public void move()
  {
  myX += mySpeed *Math.cos(myDir);
  myY += mySpeed *Math.sin(myDir);
   
  }
  public void show()
  {
  fill(myColor);
  ellipse((float)myX,(float)myY, 1,1);
  
  }

}
interface Particle
{
  public void move();
  public void show();

}
class OddballParticle implements Particle  //uses an interface
{
  double myX, myY,mySpeed, myDir;
  int myColor;
  OddballParticle()
  {
    myX = 150;
    myY = 150;
    fill(0);
    mySpeed = (Math.random()*10);
  }
  public void move()
  {
    myX += (Math.random()*10-4) *Math.cos(myDir);
    myY +=(Math.random()*10-4) *Math.cos(myDir);

  }
  public void show()
  {
    fill(myColor);
    rect((float)myX,(float)myY,10,10);
  }
  
}
class JumboParticle extends Normal//uses inheritance
{
  public void show()
  {
  fill(myColor);
  ellipse((float)myX,(float)myY, 10 , 10);
  }
    public void move()
  {
  myX += mySpeed *Math.cos(myDir);
  myY += mySpeed *Math.sin(myDir);
   
  }
}

