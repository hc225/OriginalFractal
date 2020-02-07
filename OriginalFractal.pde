public void setup()
{
	size(600,600,P3D);
	background(0);
}

public void draw()
{
	noFill();
	stroke(255);
	ortho();
	translate(300,300);
	rotateX(-PI/6);
	rotateY(PI/6);
	box(50);

	//myFractal(300,300,300);
}
//use camera https://processing.org/tutorials/p3d/
public void myFractal(int x, int y, int siz)
{
	//fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	//ellipse(x,y,siz,siz);
	noFill();
	translate(300,300);
	rotateY(0.5);
	box(siz);
	if(siz > 0)
	{
		myFractal(x,y,siz/10);//myFractal(siz-10);
	}		
}
