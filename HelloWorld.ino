void setup() {
  Serial.begin(9600);      // open the serial port at 9600 bps:    
}
void loop(){
  Serial.println("Hello World i will repeat this every 1 second");
  delay(1000);
}
