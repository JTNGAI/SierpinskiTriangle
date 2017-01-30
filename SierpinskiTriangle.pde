public void setup()
{
  size(700,700);
  background(0);
  //noLoop();
}
public void draw()
{
  sierpinski(0,700,700);
}
public void mouseDragged()//optional
{
   redraw();
}
public void sierpinski(int x, int y, int len) 
{ 
  
  if (len<=mouseX) 
{
fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
//fill(255,0,0);
triangle(x, y,   x + len/2, y-len,   x+len, y);

}

else {
 
  sierpinski(x, y, len/2);
  sierpinski(x + len/2, y, len/2);
  sierpinski(x + len/4, y - len/2, len/2);

}
  
}