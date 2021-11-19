int test_second, test_minute, test_hour;
void setTestClock(int s, int m, int h){
  test_second = s;
  test_minute = m;
  test_hour = h;
}
void CheckTestClock(){
  test_second = second();
  test_minute++;
  if (test_second >= 60) {test_minute++;test_second = 0;}
  if (test_minute >= 60){test_hour++;test_minute=0;}
  if (test_hour >= 12){test_hour = 0;}
}

void testSecondHand(){
  s_angle = map(test_second, 0, 60, 0, TWO_PI);
  pushMatrix();
  rotate(s_angle);
  image(imgSecond,0,0);
  popMatrix();
}

void testHourHand(){
  h_angle = map(test_hour + norm(test_minute, 0, 60), 0, 24, 0, TWO_PI * 2);
  pushMatrix();
  rotate(h_angle);
  image(imgHour,0,0);
  popMatrix();
}

void testMinuteHand(){
  m_angle = map(test_minute + norm(test_second, 0, 60), 0, 60, 0, TWO_PI);
  pushMatrix();
  rotate(m_angle);
  image(imgMinute,0,0);
  popMatrix();
}
