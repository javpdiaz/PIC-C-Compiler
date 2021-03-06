#include <main.h>
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT


#use fast_io(A)
#use fast_io(B)

void main()
{

   set_tris_a(0xff);
   set_tris_b(0x00);

   output_low(PIN_B3);
   output_low(PIN_B1);

   while(TRUE)
   {

      if (input(PIN_A1) == 1)  // pin A1 es entrada para el encendido
      {

         while(input(PIN_A1) == 1);
         delay_ms(10);

         for (int i = 0; i < 24; ++i)
         {
            output_high(PIN_B3);  //pin B3 es salida
            delay_ms(10000);
            output_low(PIN_B3);
            delay_ms(3000);
            output_high(PIN_B1);  //pin B1 es salida
            delay_ms(10000);
            output_low(PIN_B1);
            delay_ms(3000);

         }         
         
      }
         
   }

}
