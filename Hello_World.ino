void setup() {
  //open the serial port
  // and set the bps as 9600
  Serial.begin(9600);

}

void loop() {
  //prints hellow world on serial monitor.
  Serial.print("Hello World !");
  Serial.print("\n");
  delay(1000);

}
