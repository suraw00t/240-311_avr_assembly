// Define the pin used for our LED
int ledPin9 = 9;
int ledPin10 = 10;
int ledPin11 = 11;

// The setup() function only runs when the program starts
void setup() {
}

// The loop() function runs infinitely
void loop() {

    // Fade in
    for(int ledVal1 = 0; ledVal1 <= 255; ledVal1 +=1) {
        analogWrite(ledPin9, ledVal1);
        delay(2);
    }
        for(int ledVal2 = 0; ledVal2 <= 255; ledVal2 +=1) {
          analogWrite(ledPin10, ledVal2);
          delay(2);
        }
          for(int ledVal3 = 0; ledVal3 <= 255; ledVal3 +=1) {
            analogWrite(ledPin11, ledVal3);
            delay(2);
    }  

     // Fade out
     for(int ledVal1 = 255; ledVal1 >= 0; ledVal1 -=1) {
         analogWrite(ledPin9, ledVal1);
         delay(2);
     }
         for(int ledVal2 = 255; ledVal2 >= 0; ledVal2 -=1) {
          analogWrite(ledPin10, ledVal2);
          delay(2);
         }
          for(int ledVal3 = 255; ledVal3 >= 0; ledVal3 -=1) {
            analogWrite(ledPin11, ledVal3);
            delay(2);
     } 
     
     // Pause for 1 second (1000 milliseconds)
     //delay(100);
 
}
