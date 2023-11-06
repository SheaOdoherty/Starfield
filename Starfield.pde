Particle[] bob;
void setup()
{
size(500,500);
background(255);
  bob = new Particle[750];
  for(int i = 0; i<bob.length; i++){
    bob[i] = new Particle();
  }
   for(int n =0; n< 5; n++){
    bob[n] = new OddballParticle();
}
}
void draw(){
    background(0);
    for(int i= 0; i<bob.length; i++){
      bob[i].move();
      bob[i].show();
    }
}
class Particle
{
  double myX,myY, myAngle, mySpeed;
  int myColor;
  
  Particle(){
      myX = myY= 250;
      myAngle= Math.random()*2*Math.PI;;
      mySpeed= Math.random()* 6;
      myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }
  void move(){
    myX= myX + (Math.cos(myAngle) * mySpeed);
    myY = myY + (Math.sin(myAngle) * mySpeed);
  }
    void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}

class OddballParticle extends Particle
{
 OddballParticle(){
  }
  void move() {
      myX = myX + (int)(Math.random() * 7) - 3;
    myY = myY + (int)(Math.random() * 7) - 3;
  }
}

