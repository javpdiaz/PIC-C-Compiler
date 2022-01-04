#include <voltaje_referencia.h>
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT

#use standard_io(A)
#use fast_io(B)

void main()
{

   //set_tris_a(0x00);  //Si se usa esta instruccion se sobreescribe la señal de vref

   setup_vref(VREF_HIGH | 8 | VREF_A2);

   while(TRUE)
   {

         output_high(PIN_A0);
      
   }

}
