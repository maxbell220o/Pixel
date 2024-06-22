class Player {
  PImage image;  // Bild des Spielers
  int x;         // x- Koordinate des Spielers
  int y;         // y- Koordinate des Spielers
  int sy;        // Geschwindigkeit y-Richtung
}


Player p;

void setup() {
  size(800, 500);
  
  p = new Player();
  p.image = loadImage("player.png"); // player.png = euer Bildname
  p.x = 50;
  p.y = 50;
  p.sy = 5;
}

void draw() {
  background(250, 250, 250);
  fill(80, 30, 80);            // Legen die Farbe fest: Dunkelgrau 0-255
  rect(0, 450, 800, 30);       // rect(x, y, größe-x, größe-y);
  image(p.image, p.x, p.y, 100, 100);
  
  if (p.y + p.sy <= 370) p.y = p.y + p.sy;
  p.sy = p.sy +1;
  
}

void keyPressed() {
  if (key == 'd') p.x = p.x + 10;
  else if (key == 'a') p.x = p.x - 10;
  if (key == 'w' && p.y >= 362) {
    p.sy = -15;
  }
}
