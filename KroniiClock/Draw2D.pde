//Ritar upp grafiken och lägger dem i PGraphics objekt.

PGraphics imgSecond, imgMinute, imgHour, imgChain1, imgSquare;
int StartPos = 300;

void DrawChains(int LinkCount,int posx, int posy){
  int y = posy;
  int xStart = posx;
  imgChain1.beginDraw();
  imgChain1.stroke(0);
  imgChain1.strokeWeight(1);
  //Gråadelen av kedjan
  imgChain1.fill(200);
  //Kommenterad kod försöker göra ljusreflektion på kedjan.
  for (int i = 0;i<LinkCount;i++){
    //imgChain1.stroke(0);
    //imgChain1.fill(200);
    imgChain1.rect(xStart+(35*i),y,30,15);
    //imgChain1.noStroke();
    //imgChain1.fill(240);
    //imgChain1.rect(xStart+(35*i)+20,y+1,7,3);
  }
  //Hålet i kedjan
  imgChain1.fill(255);
  imgChain1.stroke(0);
  for (int i = 0;i<LinkCount;i++){
    imgChain1.rect(xStart+5+(35*i),y+5,20,5);
  }
  imgChain1.fill(200);
  //Enkla länken
  for (int i = 0;i<LinkCount-1;i++){
    imgChain1.rect(xStart+20+(35*i),y+5,25,5);
  }
  imgChain1.endDraw();
}

//Ritar upp den snedställda fyrkanten runt klockan
void DrawSquare(int multi){
  imgSquare.beginDraw();
    imgSquare.strokeWeight(3);
    imgSquare.stroke(212, 175, 55);
    imgSquare.line(50*multi,300*multi,300*multi,50*multi);
    imgSquare.line(300*multi,50*multi,550*multi,300*multi);
    imgSquare.line(50*multi,300*multi,300*multi,550*multi);
    imgSquare.line(300*multi,550*multi,550*multi,300*multi);
  imgSquare.endDraw();
}

void DrawSecond() {
  color second = color(212, 175, 55);
  imgSecond.beginDraw();
    imgSecond.strokeWeight(1);
    imgSecond.stroke(0);
    imgSecond.fill(second);
    imgSecond.rect(12,0,3,StartPos);
  imgSecond.endDraw();
}

void DrawMinute(){
  color minute = color(200);
  int x1 = 75;
  int x3 = 0;
  int x2 = 50;
  imgMinute.beginDraw();
    imgMinute.strokeWeight(1);
    imgMinute.stroke(0);
    imgMinute.fill(minute);
    imgMinute.rect(9,x1,3,StartPos-x1);
    imgMinute.rect(12,x3,3,StartPos-x3);
    imgMinute.rect(15,x2,3,StartPos-x2);
  imgMinute.endDraw();
}

void DrawHour(){
  //Varje block ritar en rectangle med linjer.
  color hour = color(230);
  int x1 = 110;
  int x2 = 75;
  int x3 = 50;
  int x4 = 100;
  int x5 = 130;
  imgHour.beginDraw();
    imgHour.strokeWeight(1);
    imgHour.stroke(0);
    imgHour.fill(hour);
    imgHour.rect(6,x1,3,StartPos-x1);
    imgHour.rect(9,x2,3,StartPos-x2);
    imgHour.rect(12,x3,3,StartPos-x3);
    imgHour.rect(15,x4,3,StartPos-x4);
    imgHour.rect(18,x5,3,StartPos-x5);
  imgHour.endDraw();
}
