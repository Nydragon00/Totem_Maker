import controlP5.*;

ControlP5 cp5;

String birthday, birthtime, name, size, familymember, department, shoesize;
int AT;
void setup(){
  size(700, 700);
  
  cp5 = new ControlP5(this);
  
  cp5.addTextfield("name").setPosition(0,0).setSize(100,20).setAutoClear(false);
  cp5.addTextfield("birthday").setPosition(0,40).setSize(100,20).setAutoClear(false);
  cp5.addTextfield("birthtime").setPosition(0,80).setSize(100,20).setAutoClear(false);
  cp5.addTextfield("size").setPosition(0,120).setSize(100,20).setAutoClear(false);
  cp5.addTextfield("familymember").setPosition(0,160).setSize(100,20).setAutoClear(false);
  cp5.addTextfield("department").setPosition(0,200).setSize(100,20).setAutoClear(false);
  cp5.addTextfield("shoesize").setPosition(0,240).setSize(100,20).setAutoClear(false);
  
  
  cp5.addBang("Submit").setPosition(0, 280).setSize(100, 25);
 
}

void draw() {
  background(150);
}

void Submit() {
  println();
  birthday=cp5.get(Textfield.class, "name").getText();
  name=cp5.get(Textfield.class, "birthday").getText();
  birthtime=cp5.get(Textfield.class, "birthtime").getText();
  size=cp5.get(Textfield.class, "size").getText();
  familymember=cp5.get(Textfield.class, "familymember").getText();
  department=cp5.get(Textfield.class, "department").getText();
  shoesize=cp5.get(Textfield.class, "shoesize").getText();
  
//if input for an int is a string it creates an error, check later when the main work is done
  /*
  AT = Integer.parseInt(birthtime);
  if ( AT < 1 || AT > 24) {
    birthtime = "Not a valid number, the time has to be be between 1 and 24.";
  }
  AT = Integer.parseInt(familymember);
  if ( AT < 1) {
    familymember = "Not a valid number, you cant have less than 1 familymember.";
  }
  AT = Integer.parseInt(department);
  if ( AT < 1 || AT > 101) {
    department = "Not a valid number, the department number has to be between 1 and 101.";
  }
  AT = Integer.parseInt(shoesize);
  if ( AT < 1) {
    shoesize = "Not a valid number, your shoesize cant be less than 1";
  }*/
  print(name + "\n" + birthday + "\n" + birthtime + "\n" + size + "\n" + familymember + "\n" + department + "\n" + shoesize);

}
