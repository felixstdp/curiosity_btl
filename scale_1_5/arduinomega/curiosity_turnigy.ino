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

#define chnum 8 // numero de canales de la emisora
int chval[chnum]; // valores de los canales
int PPMpin = 12; // pin de entrada PPM

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
   pinMode(PPMpin, INPUT); //pin de la emisora RC
  
  servo1.attach(10); //pines para servos
  servo3.attach(11);
  servo4.attach(8);
  servo6.attach(9);
  
  servo1.write(s1center); //arranque en posicion central
  servo3.write(s3center);
  servo4.write(s4center);
  servo6.write(s6center);
  
  Serial.begin(9600);
}

void loop()
{
  chval[chnum] = readppm(); //lee la emisora RC

  int throttle=(chval[2]-1000)/17*10; // mando adelante-atras -255 +255
  int turn=(chval[0]-1000)/16; // mando giro 
  int vrot=(chval[3]-1000)/17*10; // mando pivote

//  for(int i = 0; i < chnum; i++) // monitor de señal PPM de la emisora
//  {
//    Serial.print((chval[i]-1000)/17*10);
//    Serial.print("\t");
//  }
//  Serial.println();
  
  if (chval[5]<1000)
  {
    drive(throttle,turn);
  }
  else
  {
    rotate(vrot);
  }
  
  delay(100);
    
}

int readppm()
{
  while(pulseIn(PPMpin, HIGH, 10000)<2000){} //espera al canal 0
  
  for(int i=0; i<chnum; i++)
  {
    chval[i]=pulseIn(PPMpin, HIGH, 10000);
  }
  
  // devuleve el resultado
  return chval[chnum];
}  

void setmotor(int m, int v)
{
  int pwm = 8-m;
  int dir1 = 32+2*m;
  int dir2 = 33+2*m;
  v = constrain(v,-255,255);
  digitalWrite(dir1,v<0);
  digitalWrite(dir2,v>=0);
  analogWrite(pwm,abs(v));
}

void drive(int v, int g)
{
  servo1.write(s1center+g); //posicion recta
  servo3.write(s3center-g);
  servo4.write(s4center-g);
  servo6.write(s6center+g);
  setmotor(1,v);
  setmotor(2,v);
  setmotor(3,v);
  setmotor(4,v);
  setmotor(5,v);
  setmotor(6,v);
}

void rotate(int v)
{
  servo1.write(s1giro); //posicion giro
  servo3.write(s3giro);
  servo4.write(s4giro);
  servo6.write(s6giro);
  setmotor(1,v);
  setmotor(2,v);
  setmotor(3,v);
  setmotor(4,-v);
  setmotor(5,-v);
  setmotor(6,-v);
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
