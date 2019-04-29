#include <Servo.h>

#define s1center 90 // posiciones de centrado de los servos
#define s2center 90
#define s3center 90
#define s4center 90

Servo servo1;
Servo servo3;
Servo servo4;
Servo servo6;

void setup()
{

  for (int i = 2; i <= 7; i++)
  {
    pinMode(i,OUTPUT); //pines PWM para velocidad
  }
  for (int i = 30; i <= 42; i++)
  {
    pinMode(i,OUTPUT); //pines digitales para control de dirección
  }
  
  servo1.attach(10); //pines para servos
  servo3.attach(11);
  servo4.attach(8);
  servo6.attach(9);
  
  servo1.write(s1center); //arranque en posicion central
  servo3.write(s2center);
  servo4.write(s3center);
  servo6.write(s4center);

}

void loop()
{
  forward();
  delay(2000);
  reverse();
  delay(2000);
  brake();
  delay(2000);
}

void setmotor(int m, int v)
{
  int pwm = 8-m;
  int dir1 = 28+2*m;
  int dir2 = 29+2*m;
  v = constrain(v,-255,255);
  digitalWrite(dir1,v<0);
  digitalWrite(dir2,v>=0);
  analogWrite(pwm,abs(v));
}

void forward()
{
  setmotor(1,128);
  setmotor(2,128);
  setmotor(3,128);
  setmotor(4,128);
  setmotor(5,128);
  setmotor(6,128);
}

void reverse()
{
  setmotor(1,-128);
  setmotor(2,-128);
  setmotor(3,-128);
  setmotor(4,-128);
  setmotor(5,-128);
  setmotor(6,-128);
}

void brake()
{
setmotor(1,0);
setmotor(2,0);
setmotor(3,0);
setmotor(4,0);
setmotor(5,0);
setmotor(6,0);
}
