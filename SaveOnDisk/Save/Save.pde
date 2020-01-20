int save = 0;

void setup() {
  
  size(600, 600);   
}

void draw() {
  
  fill(save);
  rect(25, 25, 50, 50);
  
}

void mouseClicked() {
  
  if (save == 0) {
  // On enregistre pas et on colori le carré en noir
    save = 250;
  } else {
    save = 0;
    save("D:/test/blablabla.png");
  }
}
