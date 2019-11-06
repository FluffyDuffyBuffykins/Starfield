Particle[] smalls;
void setup()
{
	smalls = new Particle[500];
	size(1000, 1000);
	background(0);
	noStroke();
	for(int i = 0; i < smalls.length; i++)
		smalls[i] = new Particle();
	for(int i = 0; i < smalls.length; i += 100)
		smalls[i] = new OddballParticle();
}
void draw()
{
	background(0);
	for(int i = 0; i < smalls.length; i++){
		smalls[i].move();
		smalls[i].show();
	}
	for(int i = 0; i < smalls.length; i++){
		if(smalls[i].myX > 1100 || smalls[i].myX < -100 || smalls[i].myY > 1100 || smalls[i].myY < -100){
			smalls[i].myX = 500;
			smalls[i].myY = 500;
			smalls[i].myAngle = Math.random()*2*Math.PI;
		}

	}
}
class Particle
{
	public double myX, myY, myAngle, mySpeed;
	public int myColor;
	Particle(){
		myX = Math.random()*500+250;
		myY = Math.random()*500+250;
		mySpeed = Math.random()*7;
		myAngle = Math.random()*2*Math.PI;
		myColor = (255);
		//myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
	}
	public void move(){
		myX += Math.cos(myAngle) * mySpeed;
		myY += Math.sin(myAngle) * mySpeed;
		//mySpeed -= 0.001;

	}
	public void show(){
		fill(myColor);
		ellipse((float)myX, (float)myY, (int)(Math.random()*2 + 2), (int)(Math.random()*2 + 2));

	}
}

class OddballParticle extends Particle
{
	int myRadius;
	OddballParticle()
	{
		myRadius = (int)(Math.random() * 50 + 10);
		myX = 500;
		myY = 500;
		mySpeed = Math.random()*3;
		myAngle = Math.random()*2*Math.PI;
		myColor = color((int)(Math.random() * 156 + 100), (int)(Math.random() * 156 + 100), (int)(Math.random() * 156 + 100));
	}
	public void move()
	{
		myX += Math.cos(myAngle) * mySpeed;
		myY += Math.sin(myAngle) * mySpeed;
	}
	public void show()
	{
		fill(myColor);
		ellipse((int)myX, (int)myY, myRadius, myRadius);

	}
}


