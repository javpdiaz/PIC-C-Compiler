#include <servo.h>
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT
#use standard_io(B)

#define use_servo_1  //utiliza el servo uno
#define servo_1 PIN_B0	//pin para el servo uno
#include <servo_st.c>  //libreria pra el manejo de sectores

void main()
{
	servo_init();  //inicializa el servo

	while(TRUE)
	{
		servo_1_write(0);
		delay_ms(1000);

		servo_1_write(90);
		delay_ms(1000);

		servo_1_write(180);
		delay_ms(1000);
	}

}
