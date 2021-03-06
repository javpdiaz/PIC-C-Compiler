//#include <analog_to_dig.h>
#include <16f877a.h>
#device ADC = 10
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT
#use delay(clock = 20M)
#use standard_io (A)

#define LCD_RS PIN_D2
#define LCD_E PIN_D3
#define LCD_DB4 PIN_D4
#define LCD_DB5 PIN_D5
#define LCD_DB6 PIN_D6
#define LCD_DB7 PIN_D7

#include <LCD_16X2.c>

long valor_adc;

void main()
{
   lcd_init();
   setup_adc_ports(AN0);
   setup_adc(adc_clock_internal);

   while(TRUE)
   {

      set_adc_channel(0);  //coincide con el puerto seleccionado
      delay_ms(2);
      valor_adc = read_adc();  //se guarda la lectura en la variable

      lcd_clear();
      lcd_gotoxy(1,1);
      printf(lcd_putc, "ADC: %Lu", valor_adc);
      delay_ms(100);

   }

}
