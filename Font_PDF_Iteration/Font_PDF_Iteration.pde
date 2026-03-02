import processing.pdf.*;
PFont myfont;
boolean Record;
boolean check;
float g;
int inc;
void setup() {
  size(1080, 1920);
  frameRate(24);
  //2. variable recull l'arxiu de font.
  myfont=createFont("ABCBingo-Regular-Trial.otf", 40);
  //
}
void draw () {
  if (Record) {
    beginRecord(PDF, "processingtipo1-####.pdf");
  }
  background(0);
  //3. assignem la variable al text.
  textSize(40);
  textFont(myfont);
  
  for(float posy=30; posy<height-70; posy=posy+30){
    for(float posx=20; posx<width-5; posx=posx+90){
    pushMatrix();
    translate(posx, posy);
    if(g>=360){
    check=false;
    } else if (g<=0){
      check=true;
    }
    
    if (g<0){
    check=true;
  }
    
    if(check==false){
    inc=-1;
  }
    if(check==true) {
      inc=1;
    }
    g=g+4.4*inc;
    
    rotate(radians(g));
    text("Z", -15, -10);
    popMatrix();
  }
 }
  if (Record) {
    endRecord();
    Record=false;
  }
}
void mousePressed(){
Record=true;
}
