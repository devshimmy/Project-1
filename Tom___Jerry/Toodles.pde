class Toodles
{
  PVector position;
  PVector target;
  PVector mouseposition;
  PImage toodles;
  Toodles(float x, float y)
  {
    position = new PVector(x, y);
    toodles = loadImage("toodles.png");
    toodles.resize(150,150);
    target = new PVector(random(width), random(height));
    
  }
  void update()
  {
    mouseposition = new PVector(mouseX, mouseY);
    if (position.dist(mouseposition) < 50)
    {
      target = position;
      println("Nice");
      tom.tommy = tom.tomkiss;
    }
    if (position.dist(target) > 10)
    {
       position = position.lerp(target, movementSpeed);
    }
       else if (position.dist(target) < 10)
       {
         target = new PVector(random(width), random(height));
       }
      
  }
  void draw()
  {
    image(toodles, position.x, position.y);
  }
  void run()
  {
    update();
    draw();
  }  
}
