#include <display7segmentos.h>
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT
#use delay(clock = 20M)
#use fast_io(B)

int display[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};  //catodo comun
int contador;

void main()
{

   set_tris_b(0x00);

   while(TRUE)
   {

      for(contador = 0; contador < 10; contador++)
      {
         output_b(display[contador]);
         delay_ms(500);
      }
      
   }

}
