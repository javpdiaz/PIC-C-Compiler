#include <interrupciones.h>
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT
#use fast_io(B)
#use standard_io(C)
#use fast_io(D)

int display[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};  //catodo comun
int contador;

#INT_EXT
void interruccion_RB0(){
	for (int i = 0; i < 5; ++i)
	{
		output_high(PIN_C0);
		delay_ms(200);
		output_low(PIN_C0);
		delay_ms(200);
	}
} 

void main()
{

	set_tris_b(0xff);
	set_tris_d(0x00);
	enable_interrupts(INT_EXT);
	ext_int_edge(L_TO_H);
	enable_interrupts(GLOBAL);
	output_low(PIN_C0);

	while(TRUE)
	{

		for (int contador = 0; contador < 10; contador++)
		{
			output_d(display[contador]);
			delay_ms(500);
		}
	}

}
