import controlP5.*;

ControlP5 cp5;

Table table;
TotemHair rect, tria;
String birthday, month, name, Load_Data,Load_Data_Input;
int lengthname;

// COULEURS ALEATOIRES

//forme de tete
color r1 = color(random(255), random(255), random(255));

//variable color r2 yeux
int selected = (int)random(0, 4);
int choicesR[] = {0, 224, 255, 35};
int choicesG[] = {173, 0, 240, 31};
int choicesB[] = {239, 139, 0, 32};
color r2 = color(choicesR[selected], choicesG[selected], choicesB[selected]);

//variable color r3 cheveux
int select = (int)random(0, 4);
int choiceR[] = {100, 124, 155, 135};
int choiceG[] = {73, 100, 140, 131};
int choiceB[] = {139, 39, 100, 132};
color r3 = color(choiceG[select], choiceR[select], choiceB[select]);

void setup()  {
  
  size(650, 650);
  
  
  table = loadTable("new.csv", "header");
  
  if(table.getColumnCount() == 0) {
    table.addColumn("name");
    table.addColumn("namelength");
    table.addColumn("birthday");
    table.addColumn("month");  
  }

  cp5 = new ControlP5(this);

  cp5.addTextfield("name").setPosition(0,0).setSize(100,20).setAutoClear(false); //hair
  cp5.addTextfield("birthday").setPosition(0,40).setSize(100,20).setAutoClear(false); //face
  cp5.addTextfield("month").setPosition(0,80).setSize(100,20).setAutoClear(false);  //eyes
  cp5.addTextfield("Load_Data_Input").setPosition(0,120).setSize(100,20).setAutoClear(false); //choose a created totem

  cp5.addBang("Submit").setPosition(0, 280).setSize(100, 25); //sub,its the data for totem creation
  cp5.addBang("Load_Data").setPosition(0, 320).setSize(100, 25); //load the chosen totem
  

}

void Load_Data() {
  
  Load_Data_Input = cp5.get(Textfield.class, "Load_Data_Input").getText();

  TableRow result = table.findRow(Load_Data_Input, 0);
  birthday = result.getString(2);
  month = result.getString(3);
  lengthname = result.getInt(1); 
}

void Submit() {

  // enter the data you want to create your totem
  name=cp5.get(Textfield.class, "name").getText();
  name = new String(name);

  birthday=cp5.get(Textfield.class, "birthday").getText();
  birthday = new String(birthday);

  month=cp5.get(Textfield.class, "month").getText();
  month = new String(month);



  lengthname = name.length();
  TableRow newRow = table.addRow();
  newRow.setString("name", name);
  newRow.setInt("namelength", lengthname);
  newRow.setString("birthday", birthday);
  newRow.setString("month", month);

  saveTable(table, "data/new.csv");

}
 //<>//

void draw()
{

  background(150);

  //hair

  if(1 <= lengthname && lengthname <= 3) {
    fill(r3);
    tria = new TotemHair(100, 67, 550, 67, 325, 400);
  }
  if(4 <= lengthname && lengthname <= 6) {
    fill(r3);
    tria = new TotemHair(150, 400, 500, 400, 325, 67);
  }
  if(7 <= lengthname && lengthname <= 9) {
    fill(r3);
    rect =  new TotemHair(200, 50, 250, 300);
  }
  if(10 <= lengthname) {
    fill(r3);
    rect =  new TotemHair(150, 138, 350, 250);
  }



  if(birthday != null) {
    switch (birthday) {
      case "monday": //hexagone
        fill(r1);
        beginShape();
        vertex(325, 130);
        vertex(495, 205);
        vertex(495, 350);
        vertex(325, 450);
        vertex(155, 350);
        vertex(155, 205);
        endShape(CLOSE);
        break;
      case "tuesday": //cercle
        fill(r1);
        ellipse(325, 325, 433, 433);
        break;
      case "wednesday": //losange
        fill(r1);
        ellipse(325, 325, 600, 250);
        break;
      case "thursday": //losange
        fill(r1);
        ellipse(325, 325, 250, 600);
        break;
      case "friday": //triangle équilaterale
        fill(r1);
        triangle(100, 491, 550, 491, 325, 158);
        break;
      case "saturday": //triangle équilaterale °180
        fill(r1);
        triangle(100, 158, 550, 158, 325, 491);
        break;
      case "sunday": //rectangle hauteur>largeur
        fill(r1);
        rect(200, 138, 250, 433);
        break;

    }
  }

  //eyes

  if(month != null && birthday != null) {
    switch (month) {
      case "january" :
      case "february":
      case "march":
        switch (birthday) {
          case "monday":
          case "tuesday":
          case "wednesday":
          case "saturday":
            fill(r2);
            circle(125, 200, 100);
            fill(0);
            circle(125, 200, 5);
            fill(r2);
            circle(525, 200, 100);
            fill(0);
            circle(525, 200, 5);
            break;
          case "thursday":
            fill(r2);
            circle(250, 200, 100);
            fill(0);
            circle(250, 200, 5);
            fill(r2);
            circle(400, 200, 100);
            fill(0);
            circle(400, 200, 5);
            break;
          case "friday":
            fill(r2);
            circle(250, 200, 100);
            fill(0);
            circle(250, 200, 5);
            fill(r2);
            circle(400, 200, 100);
            fill(0);
            circle(400, 200, 5);
            break;
          case "sunday":
            fill(r2);
            circle(200, 200, 100);
            fill(0);
            circle(200, 200, 5);
            fill(r2);
            circle(450, 200, 100);
            fill(0);
            circle(450, 200, 5);
            break;
          default:
            print("Eye Error");
        }
        break;
        case "april":
        case "may":
        case "june":
          switch (birthday) {
            case "monday":
            case "wednesday":
              fill(r2);
              ellipse(200, 250, 100, 50);
              fill(0);
              circle(200, 250, 5);
              fill(r2);
              ellipse(450, 250, 100, 50);
              fill(0);
              circle(450, 250, 5);
              break;
            case "thursday":
              fill(r2);
              ellipse(250, 200, 100, 50);
              fill(0);
              circle(250, 200, 5);
              fill(r2);
              ellipse(400, 200, 100, 50);
              fill(0);
              circle(400, 200, 5);
              break;
            case "friday":
              fill(r2);
              ellipse(250, 200, 100, 50);
              fill(0);
              circle(250, 200, 5);
              fill(r2);
              ellipse(400, 200, 100, 50);
              fill(0);
              circle(400, 200, 5);
              break;
            case "sunday":
              fill(r2);
              ellipse(200, 200, 100, 50);
              fill(0);
              circle(200, 200, 5);
              fill(r2);
              ellipse(450, 200, 100, 50);
              fill(0);
              circle(450, 200, 5);
              break;
            default:
              fill(r2);
              ellipse(125, 200, 100, 50);
              fill(0);
              circle(125, 200, 5);
              fill(r2);
              ellipse(525, 200, 100, 50);
              fill(0);
              circle(525, 200, 5);
          }
          break;
        default:
          //print("Month Error");
      case "july":
      case "august":
      case "september":
        switch (birthday) {
          case "monday":
          case "tuesday":
          case "wednesday":
            fill(r2);
            curve(175, 500, 185, 260, 265, 260, 275, 300);
            fill(0);
            circle(205, 250, 10);
            fill(r2);
            curve(385, 500, 395, 260, 475, 260, 485, 300);
            fill(0);
            circle(415, 250, 10);
            break;

        }
      case "october":
      case "november":
      case "december":
        switch (birthday) {
          case "monday":
          case "tuesday":
          case "wednesday":
          case "thursday":
          case "friday":
          case "saturday":
          case "sunday":
           fill(r2);
           rect(205, 250, 100, 20);
           rect(345, 250, 100, 20);
           break;
        }
      }
    }
}

class TotemHair {
  float x1, y1, x2, y2, x3, y3;

  TotemHair(float x1, float y1, float x2, float y2) {
    this.x1 = x1;
    this.y1 = y1;

    this.x2 = x2;
    this.y2 = y2;

    rect(x1, y1, x2, y2);
  }
  TotemHair(float x1, float y1, float x2, float y2, float x3, float y3) {
    this.x1 = x1;
    this.y1 = y1;

    this.x2 = x2;
    this.y2 = y2;

    this.x3 = x3;
    this.y3 = y3;

    triangle(x1, y1, x2, y2, x3, y3);
  }
}
