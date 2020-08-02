
#include <Arduino.h>

const int LED_PIN = 13;

int main()
{
    pinMode(LED_PIN,OUTPUT);

    while(true)
    {
        digitalWrite(LED_PIN,!digitalRead(LED_PIN));
        delay(500);
    }

    return 0;
}

