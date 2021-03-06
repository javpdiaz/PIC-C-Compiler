#include <comparador.h>
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT

#use fast_io(A)
#use fast_io(B)

void main()
{

   set_tris_a(0xff);
   set_tris_b(0X00);

   setup_comparator(A0_A3_A1_A2);

   while(TRUE)
   {

      if(C1OUT){
          output_high(PIN_B4);  //Rojo encendido
          output_low(PIN_B5);   //Verde apagado
      }
      else{
         output_low(PIN_B4);    //Rojo apagado
         output_high(PIN_B5);   //Verde encendido
      }
      
   }

}
