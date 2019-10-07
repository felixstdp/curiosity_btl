#define chnum 8 // numero de canales de la emisora
int chval[chnum]; // valores de los canales
int PPMpin = 4; // pin de entrada PPM

void setup()
{
 Serial.begin(9600); 
 pinMode(PPMpin, INPUT); 
}

void loop()
{
  chval[chnum] = readppm();
  
  for(int i = 0; i < chnum; i++) 
  {
    Serial.print(chval[i]); // muestra los valores por el puerto serie
    Serial.print("\t");
  }
  Serial.println();
  delay(200);  
}

int readppm()
{
  while(pulseIn(PPMpin, HIGH, 10000)<2000){} //espera al canal 0
  
  for(int i=0; i<chnum; i++)
  {
    chval[i]=pulseIn(PPMpin, HIGH, 10000); //lee secuencialmente todos los canales
  }
  
  return chval[chnum]; // devuleve el resultado
}  
