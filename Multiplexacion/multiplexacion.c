#include <multiplexacion.h>
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT
#use standard_io(A)
#use fast_io(B)

#define displayTransistor1 PIN_A0
#define displayTransistor2 PIN_A1

int display[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};  //cátodo comun

void main()
{
   set_tris_b(0x00); //Puerto B como salida

   while(TRUE)
   {
      output_high(displayTransistor1); //Se activa el transistor 1 
      output_low(displayTransistor2);  //Se desactiva el transistor 2
      output_b(display[2]);  //Se muestra el numero "2"
      delay_ms(5);

      output_low(displayTransistor1);  //Se desactiva el transistor 1
      output_high(displayTransistor2);  //Se activa el transistor 2
      output_b(display[1]);  //Se muestra el numero "1"
      delay_ms(5);
   }

}
