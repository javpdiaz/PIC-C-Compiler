#include <aumentar_disminuir.h>
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT
#use delay(clock = 20M)

#use standard_io(A)
#use fast_io(B)

#define pulsadorASC PIN_A0  //pin para aumentar
#define pulsadorDES PIN_A1  //pin para disminuir

int display[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};
int contador;

void main()
{

   set_tris_b(0x00);
   output_b(display[0]); //para mostrar el numero cero al inicio

   while(TRUE)
   {
      if (input(pulsadorASC) == 1)
      {
         while(input(pulsadorASC) == 1);  //antirrebote
         delay_ms(10);  //antirrebote
         
         contador++;
         output_b(display[contador]);

         if (contador > 9)
         {
            contador = 9;
            output_b(display[contador]);
         }
      }

      if (input(pulsadorDES) == 1)
      {
         while(input(pulsadorDES) == 1); //antirrebote
         delay_ms(10);  //antirrebote

         contador--;
         output_b(display[contador]);

         if (contador == -1)
         {
            contador = 0;
            output_b(display[contador]);
         }
      }
   }

}
