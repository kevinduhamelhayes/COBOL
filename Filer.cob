      IDENTIFICATION DIVISION.
      PROGRAM-ID. FILER.
      DATA DIVISION.  
      FILE SECTION.
      WORKING-STORAGE SECTION.
      01 VARIABLE-COMPUESTA.
          05 TEXTO1 PIC X(20) VALUE "USTED ES JOVEN".
          05 FILER PIC X(20) VALUE "ESTO ES FILER".
          05 TEXTO2 PIC X(20) VALUE "USTED ES ADULTO".

      PROCEDURE DIVISION.
      MAIN-PROCEDURE.
          DISPLAY VARIABLE-COMPUESTA.
          MOVE FILER TO TEXTO1.
          DISPLAY VARIABLE-COMPUESTA.
          MOVE FILER TO TEXTO2.
          DISPLAY VARIABLE-COMPUESTA.
          

          STOP RUN.
