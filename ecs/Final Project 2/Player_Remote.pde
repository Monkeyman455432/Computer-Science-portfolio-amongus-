class Remote{
  int x,y;
  PImage Remote;

  
   Remote (){
    x= int(random(width));
    y= int(random(height));
    Remote= loadImage("Remote.png");
}


void display(){
    imageMode(CENTER);
    Remote.resize(70,70);
    image(Remote, x, y);
  }
}
