void setup() {
  size(700, 700);  
}

void draw() {
   
  //oeil gauche
  arc(200, 200, 90, 90, 0, PI);
  fill(0, 0, 0);
  
  ellipse(200, 220, 40, 40);
  fill(0, 0, 255);

  //oeil droit
  arc(400, 200, 90, 90, 0, PI);
  fill(0, 0, 0);
  
  ellipse(400, 220, 40, 40);
  fill(0, 0, 255);


}
