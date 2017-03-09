int ledPin=13;
int matlabData;
void setup() {
  // put your setup code here, to run once:
pinMode(ledPin,OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
if(Serial.available()>0) // if there is data to read
   {
    matlabData=Serial.read(); // read data
    if(matlabData==1)
      digitalWrite(ledPin,HIGH); // turn light on
    else if(matlabData==2)
      digitalWrite(ledPin,LOW); // turn light off
  }
}
