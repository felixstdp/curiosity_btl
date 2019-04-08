void setup() {
  for (i=[2:7]){
    pinMode(i,OUTPUT);
  }
for (i=[30:42]){
    pinMode(i,OUTPUT);
  }

}

void loop() {
  // put your main code here, to run repeatedly:

}

void setmotor(int m, int v){
  int pwm = 8-i;
  int dir1 = 28+2*i;
  int dir2 = 29+2*i;
  v = contrain (v,-255,255);
  digitalWrite(dir1,v>=0);
  digitalWrite(dir2,v<0);
  analogWrite(pwm,abs(a))
  }
}
