      IDENTIFICATION DIVISION.
      PROGRAM-ID. LEVEL88.
      DATA DIVISION.  
      FILE SECTION.
      WORKING-STORAGE SECTION.
      01 EDAD PIC 999.
          88 JOVEN VALUE 1 THRU 30.
          88 ADULTO VALUE 31 THRU 60.
          88 VIEJO VALUE 61 THRU 100.

      PROCEDURE DIVISION.
      MAIN-PROGRAM.
          DISPLAY "INGRESE SU EDAD: ".
          ACCEPT EDAD.
          IF JOVEN
              DISPLAY "USTED ES JOVEN"
          ELSE 
              IF ADULTO
                  DISPLAY "USTED ES ADULTO"
              ELSE 
                  IF VIEJO
                      DISPLAY "USTED ES VIEJO"
                  END-IF
              END-IF
          END-IF.
          STOP RUN.
