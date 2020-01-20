void setup() {
  size(700, 700); 
}
  
void draw() {
  
  //oeil gauche
  curve(400, 500, 410, 260, 490, 260, 500, 300);
  fill(244, 102, 27);
  
  
  ellipse(230, 250, 18, 18);
  fill(255, 255, 255);
  
  
  //oeil droit
  curve(400, 500, 410, 260, 490, 260, 500, 300);
  fill(244, 102, 27);
  
  
  ellipse(430, 250, 18, 18);
  fill(255, 255, 255);

}
