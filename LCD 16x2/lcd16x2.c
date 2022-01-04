#include <lcd16x2.h>
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT

#use standard_io(B) 

#define LCD_RS PIN_B0
#define LCD_E PIN_B1
#define LCD_DB4 PIN_B2
#define LCD_DB5 PIN_B3
#define LCD_DB6 PIN_B4
#define LCD_DB7 PIN_B5

#include <LCD_16X2.c>

void main()
{

   lcd_init();  //inicializar LCD

   while(TRUE)
   {

         lcd_gotoxy(1,1);
         lcd_putc("Hola Mundo");
         delay_ms(500);

         lcd_gotoxy(1,2);
         lcd_putc("Como Estas");
         delay_ms(1000);

         lcd_clear();
         delay_ms(200);
      
   }

}
