class controll{
    int x,y;
    PImage Controller;

   controll (){
    x= width/2;
    y=height-100;
    Controller= loadImage("Controller.png");
   }


  void display(){
    imageMode(CENTER);
    Controller.resize(70,70);
    image(Controller, x, y);
  }

 void move (char dir) {
   if (dir == 'w') {
      y = y -3;
    } else if (dir == 's') {
      y = y + 3;
    } else if (dir == 'a') {
      x = x - 3;
    } else if (dir == 'd') {
      x = x + 3;
    } else if (dir == 'q') {
      y = y - 3;
      x = x - 3;
    } else if (dir == 'e') {
      y = y - 3;
      x = x + 3;
    } else if (dir == 'x') {
      y = y + 3;
      x = x + 3;
    } else if (dir == 'z') {
      y = y + 3;
      x = x - 3;
  }
}
}
