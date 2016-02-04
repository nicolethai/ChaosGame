/*
	TRY: Chaos Game	https://en.wikipedia.org/wiki/Chaos_game
	http://www.shodor.org/interactivate/activities/TheChaosGame/
	http://thatsmaths.com/2014/05/22/the-chaos-game/
		Let’s specify the algorithm in a simple case. We need a dice (I should say die but that feels awkward) with three numbers. We can use a standard dice and identify 6 with 1, 5 with 2 and 4 with 3; that is, for face n we call it min(n, 7 – n)).
			(int)(Math.random()*3)+1;
		- Fix three points in the plane, C1, C2 and C3. For definiteness, we take the points C1 = (0, 0), C2 = (1, 0) and C3 = (0.5, √3/2), the corners of an equilateral triangle.
		- Pick any point P0 and draw a dot there. This is our starting point. At each stage, we denote the current point by Pk and call it the game point.
		- Roll the dice. If n comes up, draw a point half way between Pk and Cn. For example, if we roll a 2, we pick the point half way between the current point Pk and C2. This is the new game point.
		- Repeat this procedure many times, drawing a new point at each step.
*/

// public int numTriangles = 20;
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
	// numTriangles+=2;
}

public void sierpinski(int x, int y, int len) 
{
	if(len > 20) { 
		sierpinski(x+len/2, y-len/2, len/2);
	}
	else {
		strokeWeight(3);
		stroke(255);
		point(x, y);
		point(x+len/2, y-len);
		point(x+len, y);
	}
}