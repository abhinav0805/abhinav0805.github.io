int switchPin=22;
int ledPin=13;
int val=0;

void setup() {
  // put your setup code here, to run once:
pinMode(switchPin,INPUT);
pinMode(ledPin,OUTPUT);  
Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
  val = digitalRead(switchPin);
  if (val==HIGH)
  {
    
    digitalWrite(ledPin, HIGH);
  }
  else
  {
    digitalWrite(ledPin, LOW);
  }
  Serial.println(val);
}
