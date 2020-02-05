public void setup()
{
	size(600,600);
	rectMode(CENTER);
	ellipseMode(CENTER);

}

public void draw()
{
	myFractal(300, 300, 600);
}

public void myFractal(int x, int y, int siz)
{
	fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	ellipse(x,y,siz,siz);
	if(siz > 1) 
		myFractal(x,y,siz-1);
		
}