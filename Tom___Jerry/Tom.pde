class Tom
{
  PVector position;
  PImage tom;
  PImage tomkiss;
  PImage tommy;
  PVector mouseposition;
  Tom(float x, float y)
  {
    position = new PVector(x, y);
    tom = loadImage("tom.png");
    tomkiss = loadImage("tomkissing.png");
    tom.resize(170,170);
    tomkiss.resize(tom.width, tom.height);
    tommy = tom;
  }
  void draw()
  {
    mouseposition = new PVector(mouseX, mouseY);
    if (mouseposition.dist(toodles.position) > 50)
    {
      tommy = tom;
    }
    imageMode(CENTER);
    image(tommy, mouseX, mouseY);
  }
}  
