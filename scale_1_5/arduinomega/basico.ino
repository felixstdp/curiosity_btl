#include <Servo.h>

#define s1center 90 // posiciones de centrado de los servos
#define s2center 90
#define s3center 90
#define s4center 90

Servo servo1;
Servo servo2;
Servo servo3;
Servo servo4;

void setup() {

  for (i=[2:7]){
    pinMode(i,OUTPUT); //pines PWM para velocidad
  }
  for (i=[30:42]){
    pinMode(i,OUTPUT); //pines digitales para control de dirección
  }
  
  servo1.attach(8); //pines para servos
  servo2.attach(9);
  servo3.attach(10);
  servo4.attach(11);

  servo1.write(s1center); //arranque en posicion central
  servo2.write(s2center);
  servo3.write(s3center);
  servo4.write(s4center);

}

void loop() {

}

void setmotor(int m, int v){
  int pwm = 8-i;
  int dir1 = 28+2*i;
  int dir2 = 29+2*i;
  v = constrain(v,-255,255);
  digitalWrite(dir1,v>=0);
  digitalWrite(dir2,v<0);
  analogWrite(pwm,abs(v));
  }
}
