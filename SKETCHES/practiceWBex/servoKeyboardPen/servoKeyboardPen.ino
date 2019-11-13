// there are 2 issues, delay is not allowing the keys to be pressed
// figure out a way . to continually run code
//  --make own delay that can be replicated for both issues

#include <Key.h>
#include <Keypad.h>
#include <Servo.h>
Servo myservo;
int pos = 20; 
int del= 3;
bool stopMove=false;
char savedKey;


const byte ROWS = 4; //four rows
const byte COLS = 4; //four columns
char keys[ROWS][COLS] = {
  {'1','2','3','A'},
  {'4','5','6','B'},
  {'7','8','9','C'},
  {'*','0','#','D'}
};

byte rowPins[ROWS] = {2, 3, 4, 5}; //connect to the row pinouts of the keypad
byte colPins[COLS] = {6, 7, 8, 9}; //connect to the column pinouts of the keypad

Keypad keypad = Keypad( makeKeymap(keys), rowPins, colPins, ROWS, COLS );

void setup(){
   Serial.begin(9600); 
   myservo.attach(13);
   
}
  
void loop(){
  char key = keypad.getKey();
  if (key) {
   savedKey = key;
  }
  
  //change pos,change delay
  if (key =='1') {
    changeVar(130,6,false);
  }
  if (key =='2'){
    changeVar(140,4,false);
  }
  if (key =='3'){
    changeVar(43,7,false);
   }
  if (key=='4'){
    changeVar(70,1,false);
  }
  if (key =='5'){
    changeVar(160,3,false);
  }
  if (key =='6'){
    changeVar(13,2,false);
  }
  if (key =='7'){
    changeVar(113,7,false);
  }
  if (key=='8'){
    changeVar(160,3,false);
   }
  if (key=='9'){
    changeVar(180,10,false);
  }
  if (key=='A'){
    changeVar(0,0,true);  
  }
  Serial.println(savedKey);
  changeServo();
  
}

void changeServo(){
  if (!stopMove){
    for (pos = 0; pos <= 180; pos += 1) { 
      myservo.write(pos);             
      delay(del);       //ISSUE                
    }
  
    for (pos = 180; pos >= 0; pos -= 1) { 
      myservo.write(pos);             
      delay(del);  //ISSUE                    
    }

   //delay (del);
  }
}

void changeVar(int posi,int dela,bool stopM) {
  //changing the global variables
  pos = posi; 
  del= dela;
  stopMove=stopM;
}

//   if (pos < 90){
//      pos+=pos;
//      myservo.write (pos);
//      //Serial.println(pos);
//   } else {
//      pos-=pos;
//      myservo.write (pos);
//      //Serial.println(pos);
//   }
