int max = 500;
public void setup()
{
  size(500,500);
}
public void draw()
{
  sierpinski(0,500,500); 
}
public void keyPressed()//optional
{
  if(key == 'w' && max> 10){
    max = max - 10;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= max) {
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    triangle(x, y, x+len, y, x+len/2, y-len);
  } else {
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    sierpinski(x, y, len/2);
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    sierpinski(x + len/2, y, len/2);
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
