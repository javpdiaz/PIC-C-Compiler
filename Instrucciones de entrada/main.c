#include <main.h>
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT
#use delay(clock = 20M)

#use fast_io(A)
#use standard_io(B)

void main()
{

   set_tris_a(0xff); //todo el puerto A puesto a entrada.
   output_low(PIN_B0); //el pin donde va conectado el led se inicializa bajo.

   while(TRUE)
   {

      if(input(PIN_A0) == 1)
      {
         output_high(PIN_B0);         
      }
      if(input(PIN_A1) == 1)
      {
         output_low(PIN_B0);
      }
      
   }

}
