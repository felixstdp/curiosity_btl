
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
  servo1.attach(10); //pines para servos
  servo3.attach(11);
  servo4.attach(8);
  servo6.attach(9);
}

void loop()
{

  straight();
//  rotate();
    
}

void straight()
{
  servo1.write(s1center); //posicion recta
  servo3.write(s3center);
  servo4.write(s4center);
  servo6.write(s6center);
}

void rotate()
{
  servo1.write(s1giro); //posicion giro
  servo3.write(s3giro);
  servo4.write(s4giro);
  servo6.write(s6giro);
}
