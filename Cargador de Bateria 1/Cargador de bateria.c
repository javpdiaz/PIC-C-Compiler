#include <Cargador de bateria.h>
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT

//#use fast_io(A)
#use standard_io(B)

void main()
{

	setup_vref(VREF_HIGH | 1 | VREF_A2); //voltaje de referencia de 1.4V
	setup_comparator(A0_VR_A1_VR);

	while (TRUE)
	{
		
		if (C1OUT)
		{
			output_low(PIN_B4);
		}
		else
		{
			output_high(PIN_B4);
		}
	}
}
