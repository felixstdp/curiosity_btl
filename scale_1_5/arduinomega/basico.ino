//       FRONT
//  M1S1       M6S6
//    \         /
//     \       /
//  M2-----------M5
//     /       \
//    /         \
//  M3S3       M4S4
//        REAR

#include <Servo.h>

#define s1center 85 // posiciones de centrado de los servos
#define s3center 95
#define s4center 100
#define s6center 80

#define s1giro 135 // posiciones de giro
#define s3giro 45
#define s4giro 150
#define s6giro 35

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
  for (int i = 34; i <= 46; i++)
  {
    pinMode(i,OUTPUT); //pines digitales para control de dirección
  }
  
  servo1.attach(10); //pines para servos
  servo3.attach(11);
  servo4.attach(8);
  servo6.attach(9);
  
  servo1.write(s1center); //arranque en posicion central
  servo3.write(s3center);
  servo4.write(s4center);
  servo6.write(s6center);

}

void loop()
{
  int aleatorio = random(4);
  switch(aleatorio) {
    
    case 0:
      forward();
      balizargb(1,1,1);
      break;
    case 1:
      reverse();
      balizargb(0,0,1);
      break;
    case 2:
      rotateL();
      balizargb(1,0,1);
      break;
    case 3:
      rotateR();
      balizargb(1,1,0);
      break;
  }
  delay(3000);
    
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
  servo1.write(s1center); //posicion recta
  servo3.write(s3center);
  servo4.write(s4center);
  servo6.write(s6center);
  setmotor(1,120);
  setmotor(2,255);
  setmotor(3,255);
  setmotor(4,255);
  setmotor(5,255);
  setmotor(6,255);
}

void reverse()
{
  servo1.write(s1center); //posicion recta
  servo3.write(s3center);
  servo4.write(s4center);
  servo6.write(s6center);
  setmotor(1,-120);
  setmotor(2,-255);
  setmotor(3,-255);
  setmotor(4,-255);
  setmotor(5,-255);
  setmotor(6,-255);
}

void rotateR()
{
  servo1.write(s1giro); //posicion giro
  servo3.write(s3giro);
  servo4.write(s4giro);
  servo6.write(s6giro);
  setmotor(1,120);
  setmotor(2,255);
  setmotor(3,255);
  setmotor(4,-255);
  setmotor(5,-255);
  setmotor(6,-255);
}

void rotateL()
{
  servo1.write(s1giro); //posicion giro
  servo3.write(s3giro);
  servo4.write(s4giro);
  servo6.write(s6giro);
  setmotor(1,-120);
  setmotor(2,-255);
  setmotor(3,-255);
  setmotor(4,255);
  setmotor(5,255);
  setmotor(6,255);
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

void balizargb(boolean r, boolean g, boolean b)
{
  digitalWrite(19,r); //rojo
  digitalWrite(20,g); //verde
  digitalWrite(21,b); //azul
}
