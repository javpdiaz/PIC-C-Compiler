#include <main.h>

#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT
#use delay(clock = 20M)

#use fast_io(B)

void main()
{

   set_tris_b(0b11111000); //puerto b0-b1-b2 como salida, los demas como entrada
   output_b(0x00); //para limpiar el puerto

   while(TRUE)
   {
      output_high(PIN_B0);
      delay_ms(2000);
      output_high(pin_b1);
      delay_ms(2000);
      output_high(pin_b2);
      delay_ms(2000);
      output_low(pin_b0);
      delay_ms(2000);
      output_low(pin_b1);
      delay_ms(2000);
      output_low(pin_b2);
      delay_ms(2000);
   }

}
