void setup() {
  for (i=[2:7]){
    pinMode(i,OUTPUT);
  }
for (i=[31:43]){
    pinMode(i,OUTPUT);
  }

}

void loop() {
  // put your main code here, to run repeatedly:

}

void setmotor(int m, int v){
  int pwm = 8-i;
  int aia = 28+2*i;
  int aib = 29+2*i;
  v = contrain (v,-255,255);
  digitalWrite(aia,v>=0);
  digitalWrite(aib,v<0);
  analogWrite(pwm,abs(a))
  }
}
