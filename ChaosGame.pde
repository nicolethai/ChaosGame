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

	http://hmf.enseeiht.fr/travaux/CD9900/travaux/optmfn/hi/00pa/mfn03/program.htm
*/

// public int numTriangles = 20;
public int dice;
public void setup()
{
	size(700, 700);
}
public void draw()
{
	background(0);
	sierpinski(100, 600, 100); // ADD COORD OF EQUIL. TRIANGLE
}
public void mouseMoved()//optional
{
}

public void mouseClicked()
{
	// needs draw
	dice = (int)((Math.random()*3)+1);

}

public void sierpinski(int x1, int y1, int x2, int y2, int x3, int y3, int x, int y, int n) 
{
	int s = (int)((Math.random()*3)+1);
	if(s == 1) {
		x += (x1-x)/2;
		y += (y1-y)/2;
	}
	else if(s == 2) {
		x += (x2-x)/2;
		y += (y2-y)/2;
	}
	else {
		x += (x3-x)/2;
		y += (y3-y)/2;
	}
	point(x, y);

	
	// if(len > 20) { 
	// 	// recursion
	// 	sierpinski(x, y, len);
	// 	sierpinski()
	// }
	// else {
	// 	// draw 
	// 	 to make in relation to x, y, len 
	// 	   These are the corners of an equilateral triangle. 
	// 	point(0,0);
	// 	point(1,0);
	// 	point(0.5,Math.sqrt(3)/2);
	// }
}