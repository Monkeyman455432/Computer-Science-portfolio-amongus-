// Arivan Verma | April 11, 2023 | ShapeGame
boolean play;
int x, y, score, tarX, tarY;
float dist;
controll p1;
Remote a1;
int level;


void setup() {
  size(500, 500);
  x = 20;
  y = 20;
  p1 = new controll();
  a1 = new Remote();
  tarX=int(random(width));
  tarY=int(random(height));
  dist=0;
  play=false;
  frameRate=30;
  score = 0;
  level=1;
  dist = 0;
}

void draw() {
  dist = dist(p1.x, p1.y, a1.x, a1.y);
  println(dist);
   if (!play) {
    startScreen();
  } else {
    background(0);
    //background (255, 237, 238);
    infoPanel();
    a1.display();
    p1.display();
  background(30,30,60);
  p1.display();
  a1.display();
  score();
  target();

  if (keyPressed) {
    if (key == 'w' || key == 'w') {
      p1.move('w');
    } else if (key == 's' || key == 's') {
      p1.move('s');
    } else if (key == 'a' || key == 'a') {
      p1.move('a');
    } else if (key == 'd' || key == 'd') {
      p1.move('d');
    } else if (key == 'q' || key == 'q') {
      p1.move('q');
    } else if (key == 'e' || key == 'e') {
      p1.move('e');
    } else if (key == 'x' || key == 'x') {
      p1.move('x');
    } else if (key == 'z' || key == 'z') {
      p1.move('z');
      // Before i had the caps lock on wich is why both of the keys are lowercase- to get rid of the bug
    }
  }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (key == UP) {
      p1.move('w');
    } else if (key == LEFT) {
      p1.move('a');
    } else if (key == DOWN) {
      p1.move('s');
    } else if (key == RIGHT) {
      p1.move('d');
    }
  }
  if (key == ' ') {
    play = true;
  }
}



void score () {
  fill(255, 128);
  rectMode(CORNER);
  rect(0, 0, width, 30);
  fill(0);
  text("Score: " + score, 40, 20);
  text("Target: " + height, width/2-100, 23);
  text("Dist: " + dist, width-100,23);
  text("Time: " +frameCount/30, width-230, 23);
}
void startScreen() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(28);
  text("Bob and the Remote", width/2,250);
  textSize(28);
  fill(30,50,60);
  text("by Arivan Verma", width/2,350);
  textSize(28);
  text("PRESS THE SPACE KEY TO START", width/2, 400);
}

void gameOver() {
  fill(0);
  background(0);
  textAlign(CENTER);
  textSize(30);
  text("GAME OVER", width/2,340);
  textSize(30);
  text("Bobby Did not get the remote, level" + level, width/2, 425);
  noLoop();
}
void infoPanel() {
  fill(196, 179, 210);
  //fill(196, 179, 210, 128);
  rect(0, 0, width, 50);
  fill(255);
  textSize(22);
  text("SCORE: " + score, 300, 40);
  text("TIME: " + frameCount/50, 50, 33);
  text("LVL: " + level, 200, 33);
}

void target() {
  if (dist<30) {
    a1 = new Remote();
    if (a1.y<60) {
      a1.y=60;
    }
    score= score+100;
    height=100;
  }  
}
