public void setup()
{
  size(500,500);
  background(0);
}
public void draw()
{
  //fill(90,230,190);
  noFill();
  stroke(255);
  //strokeWeight(5);
  //noStroke();
  sierpinski(0,500,500);
}
public void mouseClicked()//optional
{
  redraw();
  background(0);
  int ah = (int)(Math.random()*1000);
  sierpinski(0,500,ah);
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20)
  {
    triangle(x, y, x + len/2, y - len, x + len, y);
  }
  else 
  {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}