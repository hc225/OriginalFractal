public void setup()
{
	size(600,600,P3D);
	background(0);
}
public void draw()
{
	strokeWeight(0.25);
	translate(300,300);
	rotateX(-PI);
	myFractal(0,600);
	myFractal(1,600);
	myFractal(0,600);
}

public void myFractal(int rotX, int siz)
{
	stroke(random(256),random(256),random(256));
	noFill();
	ortho();
	if (rotX == 1) rotateX(PI/6);
	else rotateY(PI/6);
	box(siz);
	if(siz > 10)
	{	

		myFractal(rotX,siz-50);
		myFractal(rotX,siz-50);
	}		
}
