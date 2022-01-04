0000: 
       
       SUBWF  0Ah,W
L0002: 
L0003: NOP
L0004: 
L0005: 
       DECF   4,W
       ANDLW  3
       DECF   5,W
L0009: 
       
       DECF   4,W
       ANDLW  3
       DECF   5,W
       
       RETLW  0Ah
       DECF   0Bh,W
       XORWF  0Ah,W
       
       ANDLW  0C4h
       RETLW  4
       DECF   6,W
       RETLW  40h
       DECF   7,W
       RETLW  41h
       DECF   8,W
L001A: RETLW  42h
       DECF   9,W
       RETLW  43h
       DECF   0Ah,W
L001E: 
       
       SUBWF  4,W
L0021: 
       
L0023: 
       
       RETLW  46h
       SUBWF  4,W
       RETLW  47h
L0028: DECF   0,W
       RETLW  48h
L002A: DECF   1,W
       RETLW  49h
       DECF   2,W
       RETLW  4Ah
       DECF   3,W
       RETLW  4Bh
       SUBWF  0Ah,W
       ANDLW  45h
       SUBWF  3,W
       
       ANDLW  44h
       
       
       ???
       XORWF  0Fh,W
       
       SUBWF  0Eh,W
       
L003C: ADDWF  0Dh,W
       GOTO   L00CE
L003E: 
       GOTO   L00CF
L0040: GOTO   L00D0
       RETLW  50h
L0042: 
       
L0044: 
       ADDWF  10h,W
       
       BTFSC  5,4
L0048: 
L0049: BTFSC  5,4
       RETLW  4Eh
L004B: DECF   0,W
       RETLW  4Fh
       DECF   3,W
L004E: 
       COMF   3,W
       
L0051: 
       
       COMF   0,W
L0054: 
       
       
       
       
L0059: 
L005A: 
       
       
       
       
       ADDWF  0Fh,W
L0060: ADDWF  0Eh,W
       
L0062: 
       
L0064: 
       
       SUBWF  4,W
       RETLW  0
L0068: 
       
       
       DECF   1,W
       ADDWF  0,W
       GOTO   L00C0
       
       GOTO   L00C1
       
       
       DECF   0,W
       GOTO   L00C0
       
       GOTO   L0080
       
       ???
       
       
       
       
       
       
       
       
L0080: 
       
       
L0083: 
L0084: 
       RETLW  1
L0086: 
       
L0088: SUBWF  1,W
       
       
       
       SUBWF  10h,W
L008D: XORWF  1Ah,W
       XORWF  1Ch,W
       
       
       SUBWF  5,W
L0092: 
       
       
       
       ADDWF  16h,W
       RETLW  56h
       
       
       
L009B: 
       
       DECF   17h,W
       
       DECF   18h,W
       
       GOTO   L00D7
       
       
       
       DECF   17h,W
L00A6: 
       DECF   18h,W
       
       GOTO   L00D7
L00AA: 
       GOTO   L00D6
       
L00AD: 
       
       
L00B0: 
       ADDWF  0Fh,W
       ADDWF  0Eh,W
       ADDWF  0Dh,W
       
       ADDWF  10h,W
L00B6: 
       
       ADDWF  0Ch,W
       
L00BA: DECF   1,W
       RETLW  1Fh
L00BC: 
       BCF    1,2
L00BE: SUBWF  1Fh,W
       
L00C0: DECF   0,W
L00C1: GOTO   L00C0
L00C2: 
L00C3: 
       
       
       RETLW  1Eh
       DECF   0Ch,W
       ADDWF  17h,W
L00C9: RETLW  4Ch
       DECF   16h,W
       
L00CC: DECF   0,W
       RETLW  57h
L00CE: DECF   1,W
L00CF: RETLW  56h
L00D0: DECF   2,W
L00D1: ADDWF  3,W
       RETLW  0C1h
       
       
       RETLW  42h
L00D6: DECF   1,W
       ADDWF  2,W
       
       DECFSZ 0,W
L00DA: RETLW  0C1h
       
       
       ADDWF  0,W
       
       
       
       
L00E2: IORLW  0C2h
L00E3: IORLW  0C1h
L00E4: INCFSZ 0,W
L00E5: 
       
L00E7: RETLW  43h
       DECF   19h,W
       RETLW  42h
L00EA: DECF   18h,W
L00EB: RETLW  41h
       DECF   17h,W
       RETLW  40h
       DECF   16h,W
       ADDWF  1Dh,W
       ADDWF  1Ch,W
       
       DECF   1Bh,W
       
       DECF   1Ah,W
       RETLW  56h
L00F6: 
L00F7: 
L00F8: DECF   1Eh,W
       RETLW  5Ah
L00FA: 
L00FB: 
       BTFSS  1Eh,6
       
L00FE: 
       
       DECFSZ 1Eh,W
       
       
       
       
       
       
       BTFSS  1Eh,6
       
       
       RETLW  5Eh
       DECF   0,W
       ADDWF  1,W
       ADDWF  2,W
       ADDWF  3,W
       RETLW  57h
       DECF   2,F
       
       RETLW  58h
       DECF   1,F
       RETLW  59h
       DECF   0,F
       
       DECF   1Eh,W
       ADDWF  1Fh,W
       
       
       RETLW  5Dh
       BTFSS  3,6
       
       
       GOTO   L00C2
       
       
       GOTO   L00C1
       
       
       RETLW  5Ch
       BTFSS  2,6
       
       
       GOTO   L00C1
       
       
       RETLW  5Bh
       DECF   18h,W
       
       RETLW  58h
       BTFSS  1,6
       
       
       IORLW  0DFh
       MOVLW  0C1h
       MOVLW  0C2h
       MOVLW  0C3h
       MOVLW  0E2h
       MOVLW  0E1h
       MOVLW  0E0h
       
       GOTO   L00DE
       
       
       BTFSS  0,6
       
       
       
       
       IORLW  0E2h
       IORLW  0C3h
       IORLW  0C2h
       IORLW  0C1h
       INCFSZ 0,W
       
       
       
       
       GOTO   L00C3
       
       
       GOTO   L00C2
       
       
       GOTO   L00C1
       
       
       MOVLW  0C1h
       MOVLW  0C2h
       MOVLW  0C3h
       GOTO   L00C0
       
       
       RETLW  57h
       DECF   1Fh,W
       RETLW  5Bh
       BTFSC  1Fh,6
       
       
       
       
       
       
       ADDWF  0,W
       ADDWF  1,W
       ADDWF  2,W
       ADDWF  3,W
       RETLW  40h
       DECF   16h,W
       RETLW  41h
       DECF   17h,W
       RETLW  42h
       DECF   18h,W
       RETLW  43h
       DECF   19h,W
       RETLW  59h
       DECF   1Dh,W
       RETLW  58h
       DECF   1Ch,W
       RETLW  57h
       DECF   1Bh,W
       RETLW  56h
       DECF   1Ah,W
       ADDWF  1,F
       ADDWF  0,F
       
       DECF   1Fh,W
       
       DECF   1Eh,W
       RETLW  5Ah
L0180: 
       
       DECF   6,F
       RETLW  5Eh
       
       
       DECFSZ 6,F
       
       
       
       BTFSS  6,7
L018B: 
       
       
       
       DECFSZ 6,F
       
       
       
       
       RETLW  66h
       DECF   0,W
       ADDWF  1,W
       ADDWF  2,W
       ADDWF  3,W
       ADDWF  5,F
       RETLW  5Bh
       DECF   4,F
       
       RETLW  5Ch
       DECF   3,F
       RETLW  5Dh
       DECF   2,F
       
       DECF   6,F
       RETLW  61h
       DECFSZ 2,F
       
       
       
       DECFSZ 3,F
       
       
       DECFSZ 4,F
       
       
       DECFSZ 5,F
       
       
       GOTO   L00E5
       GOTO   L00E4
       GOTO   L00E3
       RETLW  61h
       BTFSS  2,7
       
       RETLW  60h
       DECFSZ 3,F
       
       
       
       DECFSZ 4,F
       
       
       DECFSZ 5,F
L01C0: 
L01C1: 
       GOTO   L00E5
       GOTO   L00E4
       RETLW  60h
       BTFSS  3,7
       RETLW  61h
       BTFSS  2,7
       
       
       GOTO   L00E3
       
       
       GOTO   L00E4
       
       
       GOTO   L00E5
       
       RETLW  5Fh
       
       DECFSZ 4,F
       
       
L01D7: 
       DECFSZ 5,F
       
       
       GOTO   L00E5
       RETLW  5Fh
       
L01DE: BTFSS  4,7
       RETLW  60h
       BTFSS  3,7
       
       
       GOTO   L00E4
       
       
L01E6: GOTO   L00E5
       
       
       GOTO   L00E6
       
       
       
       IORLW  0E2h
       IORLW  0E3h
       IORLW  0E4h
       IORLW  0E5h
       
       IORLW  0C3h
       IORLW  0C2h
       IORLW  0C1h
       IORLW  0E7h
       
       
       
       
       MOVLW  0C1h
       MOVLW  0C2h
       MOVLW  0C3h
       MOVLW  0E7h
       
       INCFSZ 0,W
L0200: 
L0201: 
       
L0203: 
       
       IORLW  0E2h
       IORLW  0E3h
       IORLW  0E4h
       IORLW  0E5h
       RETLW  61h
       DECFSZ 2,F
       
       
       
       DECFSZ 3,F
       
       
       DECFSZ 4,F
       
       
       DECFSZ 5,F
       
       
L0217: RETLW  60h
       DECFSZ 3,F
       
       
       
       DECFSZ 4,F
       
       
       DECFSZ 5,F
       
       
L0222: RETLW  5Fh
       
       DECFSZ 4,F
       
       
       
       DECFSZ 5,F
       
       
L022B: GOTO   L02C3
       
       
       GOTO   L02C2
       
       
       GOTO   L02C1
       
       
       GOTO   L02C0
L0235: 
       
       MOVLW  0C1h
       MOVLW  0C2h
       MOVLW  0C3h
L023A: RETLW  5Bh
       DECF   6,F
       RETLW  5Fh
       BTFSC  6,7
       
       
       
       
L0242: 
       
L0244: ADDWF  0,W
       ADDWF  1,W
       ADDWF  2,W
       ADDWF  3,W
L0248: RETLW  43h
       DECF   14h,W
       RETLW  42h
       DECF   13h,W
       RETLW  41h
       DECF   12h,W
       RETLW  40h
       DECF   11h,W
       ???
       RETLW  57h
       DECF   1Eh,W
       RETLW  5Bh
       BTFSC  1Eh,6
       
       
       
       
       
       
       
L025C: RETLW  57h
       DECF   1Eh,W
       RETLW  5Ah
       DECF   1Fh,W
       RETLW  56h
       DECFSZ 1Fh,W
L0262: 
       
       
       
       RETLW  3
       
       SUBWF  3,W
       
L026A: RETLW  5Bh
       DECF   1Fh,W
       RETLW  57h
       DECFSZ 1Fh,W
L026E: 
       
       
       
       RETLW  3
       
       SUBWF  3,W
       
L0276: RETLW  5Ch
       DECF   1Fh,W
       RETLW  58h
       DECFSZ 1Fh,W
L027A: 
       
       
       
       RETLW  3
       
       SUBWF  3,W
       
L0282: RETLW  5Dh
       DECF   1Fh,W
       RETLW  59h
       DECFSZ 1Fh,W
L0286: 
       
       
       
       RETLW  3
       
       SUBWF  3,W
       
L028E: 
L028F: ???
L0290: ADDWF  17h,W
L0291: RETLW  56h
       COMF   17h,W
       
       
       
       DECF   18h,W
       
       GOTO   L02D7
       
L029A: 
       XORWF  4,W
       
       BSF    3,4
       ADDWF  0Dh,W
       ADDWF  0Fh,W
       ADDWF  0Eh,W
       ADDWF  10h,W
       
       
       
       
       
       
       
       
       XORWF  1Ah,W
       XORWF  1Ch,W
       
L02AD: RETLW  4Dh
L02AE: 
       
       
L02B1: 
       
       
L02B4: 
       
       
L02B7: 
       RETLW  54h
       DECF   19h,W
       RETLW  53h
       DECF   18h,W
       RETLW  52h
       DECF   17h,W
       RETLW  51h
       DECF   16h,W
L02C0: 
L02C1: DECF   1Dh,W
L02C2: DECF   1Ch,W
L02C3: 
       DECF   1Bh,W
       
       DECF   1Ah,W
       
       
       
       
       DECF   19h,W
       
       DECF   18h,W
       
       DECF   17h,W
       
       DECF   16h,W
       RETLW  54h
       DECF   1Dh,W
       RETLW  53h
       DECF   1Ch,W
       RETLW  52h
L02D7: DECF   1Bh,W
       RETLW  51h
       DECF   1Ah,W
       
       
       
L02DD: 
       DECF   16h,W
       
L02E0: 
       RETLW  54h
       DECF   19h,W
       RETLW  53h
       DECF   18h,W
       RETLW  52h
       DECF   17h,W
       RETLW  51h
       DECF   16h,W
       
       DECF   1Dh,W
       DECF   1Ch,W
       
       DECF   1Bh,W
       
       DECF   1Ah,W
       
       
       
       
       DECF   19h,W
       
       DECF   18h,W
       
       DECF   17h,W
       
       DECF   16h,W
       RETLW  54h
       DECF   1Dh,W
       RETLW  53h
       DECF   1Ch,W
       RETLW  52h
       DECF   1Bh,W
       RETLW  51h
       DECF   1Ah,W
       
       
       
L0306: 
       
       
       
       
       
       
       
       
L030F: 
       
       
       
       ADDWF  0Fh,W
       ADDWF  0Eh,W
       ADDWF  0Dh,W
       
L0317: 
       DECF   0Dh,W
L0319: 
L031A: 
       DECF   0Dh,W
L031C: 
L031D: RETLW  54h
       DECF   19h,W
       RETLW  53h
       DECF   18h,W
       RETLW  52h
       DECF   17h,W
       RETLW  51h
       DECF   16h,W
       
       DECF   1Dh,W
       
       DECF   1Ch,W
       
       DECF   1Bh,W
       
       DECF   1Ah,W
       
       
       
       
       DECF   19h,W
       DECF   18h,W
       
       DECF   17h,W
       
       DECF   16h,W
       RETLW  54h
       DECF   1Dh,W
       RETLW  53h
       DECF   1Ch,W
       RETLW  52h
       DECF   1Bh,W
       RETLW  51h
       DECF   1Ah,W
       
       
       
L0342: RETLW  54h
       DECF   19h,W
       RETLW  53h
       DECF   18h,W
       RETLW  52h
       DECF   17h,W
       RETLW  51h
       DECF   16h,W
       
       DECF   1Dh,W
       
       DECF   1Ch,W
       
       DECF   1Bh,W
       
       DECF   1Ah,W
       
       
       
       
       DECF   19h,W
       
       DECF   18h,W
       
       DECF   17h,W
       
       DECF   16h,W
       RETLW  54h
       DECF   1Dh,W
       RETLW  53h
       DECF   1Ch,W
       RETLW  52h
       DECF   1Bh,W
       RETLW  51h
       DECF   1Ah,W
       
       
       
L0368: 
       
       
       
       
       
       
       
       
       
       
L0373: 
       
       
       
       ADDWF  0Fh,W
       ADDWF  0Eh,W
       ADDWF  0Dh,W
       
L037B: 
       
       DECF   0Dh,W
L037E: 
L037F: 
       
       
       
       
       
       
       
       
       
       
       BCF    0Bh,4
L038B: XORWF  0Fh,W
       
       SUBWF  0Eh,W
       ADDWF  0Dh,W
       
       
L0391: 
       
       
       ADDWF  0Dh,W
       
L0396: 
L0397: 
       CLRF   3
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
L03D7: 
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
L03E7: 
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
