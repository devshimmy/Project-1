Tom tom;
Toodles toodles;
PImage room;
float dist;
PVector position;
PVector target = new PVector(width/2,height/2);
float movementSpeed = 0.1;  
void setup()
{
  room = loadImage("room.jpg");
  image(room, 0, 0, width, height);
  room.resize(width,height);
  size(1000,800,P2D);
  tom = new Tom(mouseX, mouseY);
  toodles = new Toodles(random(0,1000), random(800)); 
}
void draw() 
{
  background(room);
  tom.draw();
  toodles.run();
  position = new PVector(mouseX, mouseY);
}
