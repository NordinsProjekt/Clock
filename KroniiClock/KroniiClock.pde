float s_angle, m_angle, h_angle;
//Sätt true för att manipulera klockan
boolean test = false;

void setup(){
  //fullScreen();
  //orientation(LANDSCAPE);
  size(600, 600);
  imgSecond = createGraphics(25,height);
  imgMinute = createGraphics(25,height);
  imgHour = createGraphics(25,height);
  imgChain1 = createGraphics(315,35);
  imgSquare = createGraphics(300,300);
  imageMode(CENTER);
  if (test){
    frameRate(60);
    setTestClock(0,10,11);
  } else{
    frameRate(3);
  }
  DrawHour();
  DrawMinute();
  DrawSecond();
  DrawChains(9,0,0);
  DrawSquare(1);
}

void draw(){
  background(255);
  //DrawChains(15,5,25);
  
  //Används för att flytta hela fönstret.
  //Används för att kunna animera klockan.
  //Allt som skrivs efter translate kommer att förskjutas.
  //Chains();
  translate(width/2,height/2);
  ThinOuterCircle();
  //Chains();
  if (test){
    CheckTestClock();
    testHourHand();
    testMinuteHand();
    testSecondHand();
  }else{
    HourHand();
    MinuteHand();
    SecondHand();
  }
  InnerCircle();
}
void Chains(){
  pushMatrix();
    //rotate(45);
    image(imgChain1,200,50);
  popMatrix();
}

void SecondHand(){
  s_angle = map(second(), 0, 60, 0, TWO_PI);
  pushMatrix();
  rotate(s_angle);
  image(imgSecond,0,0);
  popMatrix();
}

void HourHand(){
  h_angle = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2);
  pushMatrix();
  rotate(h_angle);
  image(imgHour,0,0);
  popMatrix();
}

void MinuteHand(){
  m_angle = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI);
  pushMatrix();
  rotate(m_angle);
  image(imgMinute,0,0);
  popMatrix();
}
void InnerCircle() {
  fill(210);
  strokeWeight(1);
  stroke(0);
  ellipse(0, 0, 75, 75);
}

void ThinOuterCircle() {
  strokeWeight(1);
  stroke(0);
  noFill();
  ellipse(0, 0, 200, 200);
}
