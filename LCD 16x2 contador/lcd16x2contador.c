#include <lcd16x2contador.h>
#fuses HS, NOWDT, NOPUT, NOLVP, NOPROTECT, BROWNOUT

#use standard_io(B)

#define LCD_RS PIN_B0
#define LCD_E PIN_B1
#define LCD_DB4 PIN_B2
#define LCD_DB5 PIN_B3
#define LCD_DB6 PIN_B4
#define LCD_DB7 PIN_B5

#include <LCD_16X2.c>

int contador = 0;

char figura1 [] = {0x04,0x00,0x04,0x0E,0x15,0x04,0x0A,0x11};
char figura2 [] = {0x04,0x00,0x15,0x0E,0x04,0x04,0x0A,0x11};
 
void main()
{
   
   lcd_init();
   CGRAM_position(0);
   CGRAM_create_char(figura1);
   CGRAM_position(1);
   CGRAM_create_char(figura2);

   while(TRUE)
   {

      lcd_gotoxy(1,1);
      lcd_putc("Contador");
      lcd_gotoxy(1,2);
      printf(lcd_putc, "%u", contador);
      lcd_gotoxy(15, 2);
      CGRAM_putc(0);
      delay_ms(300);
      lcd_gotoxy(15, 2);
      CGRAM_putc(1);
      contador++;
      delay_ms(300);
      lcd_clear();
      
   }

}
