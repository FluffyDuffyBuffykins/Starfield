Particle[] smalls;
void setup()
{
	smalls = new Particle[500];
	size(500, 500);
	background(0);
	noStroke();
	for(int i = 0; i < smalls.length; i++)
		smalls[i] = new Particle();

}
void draw()
{
	for(int i = 0; i < smalls.length; i++){
		smalls[i].move();
		smalls[i].show();
	}
}
class Particle
{
	double myX, myY, myAngle, mySpeed;
	int myColor;
	Particle(){
		myX = 250;
		myY = 250;
		mySpeed = Math.random()*10;
		myAngle = Math.cos(Math.random()*2*Math.PI);
		myColor = color((int)(Math.random() * 155 + 100), (int)(Math.random() * 155 + 100), (int)(Math.random() * 155 + 100));
	}
	void move(){
		myX += Math.cos(myAngle * mySpeed);
		myY += Math.sin(myAngle * mySpeed);
		mySpeed -= 0.001;

	}
	void show(){
		stroke(myColor);
		ellipse((float)myX, (float)myY, 3, 3);

	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


