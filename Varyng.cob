      IDENTIFICATION DIVISION.
      PROGRAM-ID. TIMES.
      DATA DIVISION.  
      FILE SECTION.
      WORKING-STORAGE SECTION.
      01 NUMERO PIC 999.

      PROCEDURE DIVISION.
      
      CONDICION.
        PERFORM INICIO VARYING NUMERO FROM 1 BY 1 UNTIL NUMERO > 100.
        STOP RUN.
        INICIO.
          DISPLAY NUMERO.

