PGraphics pg;
PFont font;

void setup() {
  font = createFont("Roboto-Regular.ttf", 600);
  size(800, 800, P2D);
  pg = createGraphics(800, 800, P2D);
}

void draw() {
  
  background (0);
  
  pg.beginDraw();
  pg.background(0);
  pg.fill(255);
  pg.textFont(font);
  pg.textSize(250);
  pg.pushMatrix();
  pg.translate(width/2, height/1.4-215);
  pg.textAlign(CENTER, CENTER);
  pg.text("shake", 0, 0);
  pg.popMatrix();
  pg.endDraw();
  
  int tilesX = 8;
  int tilesY = 8;
  
  int tileW = int(width/tilesX);
  int tileH = int(height/tilesY);
  
 for (int y = 0; y < tilesY; y++) {
   for (int x = 0; x < tilesX; x++) {
     
    //source 
     int sx = x * tileW + int(random(-10,10));
     int sy = y * tileH; 
     int sw = tileW;
     int sh = tileH;
     
    //distination 
     int dx = x*tileW;
     int dy = y*tileH;
     int dw = tileW;
     int dh = tileH;
     
     copy(pg, sx, sy, sw, sh, dx, dy, dw, dh);
   }
 }
}
