class Frame {
  int w = 750;
  int h = 750;
  void drawFrame(){
    rect(400-this.w/2, 300-this.h/2, this.w, this.h);
  }
  void drawImage(PImage map){
    image(map, 400-this.w/2, 400-this.h/2, this.w, this.h);
  }
}
