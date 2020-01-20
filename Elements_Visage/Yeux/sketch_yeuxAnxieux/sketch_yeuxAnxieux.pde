void setup ()
{
  size(650, 650);
  
  beginShape(); // oeil gauche
  curveVertex(210, 250);
  curveVertex(220, 240);
  curveVertex(285, 220);
  curveVertex(300, 240);
  curveVertex(310, 250);
  endShape();
  
  ellipse(285, 230, 20, 20); //ellipse gauche
  fill(225, 255, 255);
  
  beginShape(); // oeil droit
  curveVertex(310, 250);
  curveVertex(320, 240);
  curveVertex(335, 220);
  curveVertex(400, 240);
  curveVertex(410, 250);
  endShape();
  
  ellipse(335, 230, 20, 20); //ellipse droite
  fill(225, 255, 255);

}
