      IDENTIFICATION DIVISION.
      PROGRAM-ID. TIMES.
      DATA DIVISION.  
      FILE SECTION.
      WORKING-STORAGE SECTION.
      01 NUMERO PIC 999.

      PROCEDURE DIVISION.
      INICIO.
          PERFORM OPERACION UNTIL NUMERO = 100.
          STOP RUN.
      OPERACION.
          ADD 1 TO NUMERO.
          DISPLAY NUMERO.