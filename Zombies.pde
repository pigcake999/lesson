PImage map;
PImage character;

int playerX;
int playerY;
int playSpeed;

Frame mainframe = new Frame();

void setup(){
  size(800, 800);
  
  map = loadImage("map.jpg");
  character = loadImage("char.png");
  
  playerX = 0;
  playerY = 0;
  playSpeed = 5;
}

void draw(){
  background(0);
  
  mainframe.drawImage(map);
  image(character, 400-playerX, 400-playerY, 50, 50);
  
  if(keyPressed){
    if(keyCode == LEFT){
      if(playerX + playSpeed < 305){
        playerX += playSpeed;
        println("X: "+str(playerX)+" Y: "+str(playerY));
      }
    }
    if(keyCode == UP){
      playerY += playSpeed;
      println("X: "+str(playerX)+" Y: "+str(playerY));
    }
    if(keyCode == RIGHT){
      if(playerX - playSpeed > -254){
        playerX -= playSpeed;
        println("X: "+str(playerX)+" Y: "+str(playerY));
      }
    }
    if(keyCode == DOWN){
      playerY -= playSpeed;
      println("X: "+str(playerX)+" Y: "+str(playerY));
    }
  }
}
