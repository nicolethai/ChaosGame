/*
	TRY: Chaos Game	https://en.wikipedia.org/wiki/Chaos_game
	http://www.shodor.org/interactivate/activities/TheChaosGame/
	http://thatsmaths.com/2014/05/22/the-chaos-game/
*/

public int numTriangles = 20;
public void setup()
{
	size(700, 700);
	noLoop(); //stops the seizures
}
public void draw()
{
	background(0);
	sierpinski(100, 600, 100);
}
public void mouseMoved()//optional
{
}

public void mouseClicked()
{
	numTriangles+=2;
}

public void sierpinski(int x, int y, int len) 
{
	if(len > numTriangles) { 

	}
	else {

	}
}