float limit = 20; 
void setup() {
  size(600,600);
  background(255);
  noLoop();
} 

void draw(){
  background(255);
  sierpinski(50,550,500);
}
  void sierpinski(float x, float y, float len){

if (len<=limit){
  triangle(x,y,x+len,y,x+len/2,y-len);
}else{
float half = len/2;
sierpinski(x,y,half);
sierpinski(x+half, y, half);
sierpinski(x+half/2,y-half,half);
}
}

void keyPressed(){
  limit +=5;
  redraw();
}
