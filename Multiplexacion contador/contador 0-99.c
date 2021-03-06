#include <contador 0-99.h>
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT
#use standard_io(A)
#use fast_io(B)

#define displayTransistor1 PIN_A0  //control del transistor 1
#define displayTransistor2 PIN_A1  //control del transistor 2

int display[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};  //cátodo comun
int unidades = 0;
int decenas = 0;


void main()
{

   set_tris_b(0x00);  //puerto B como salida

   while(TRUE)
   {

      for (int decenas = 0; decenas < 10; decenas++)
      {
         for (int unidades = 0; unidades < 10; unidades++)
         {
         	for (int i = 0; i < 30; i++)  //opcional para evitar parpadeo
         	{
         		output_high(displayTransistor1);
         		output_low(displayTransistor2);
         		output_b(display[unidades]);
         		delay_ms(5);

         		output_low(displayTransistor1);
         		output_high(displayTransistor2);
         		output_b(display[decenas]);
         		delay_ms(5);
         	}
            
         }
      }

   }

}
