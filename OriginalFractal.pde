float rotY;
public void setup()
{
	size(800,800,P3D);
	rotY = PI/6;
}
public void draw()
{
	background(0);
	noFill();
	strokeWeight(1.5);
	translate(400,400);
	rotateY(rotY);
	rotY+= PI/180;	
	myFractal(PI/6,4000);

}

public void myFractal(float rot, int siz)
{
	rotateX(rot);
	rotateY(rot);
	rotateZ(rot);
	box(siz);
	if(siz > 0)
	{	
		stroke(random(256),random(256),random(256));
		myFractal(rot,siz/2);
	}		
}