      IDENTIFICATION DIVISION.
      PROGRAM-ID. PIDE-NOMBRE.
      DATA DIVISION.  
      FILE SECTION.
      WORKING-STORAGE SECTION.
      01 NOMBRE PIC X(20).
      01 APELLIDO PIC X(20).
      01 EDAD PIC 99.

      PROCEDURE DIVISION.
      PERFORM SOLICI-NOMBRE THROUGH SOLICI-APELLIDO.
      PERFORM SOLICI-EDAD.
      DISPLAY "SU NOMBRE ES:"  NOMBRE "SU APELLIDO ES: "  APELLIDO
      "SU EDAD ES: " EDAD.
          STOP RUN. 
      SOLICI-NOMBRE.
          DISPLAY "INGRESE SU NOMBRE: ".
          ACCEPT NOMBRE.
      SOLICI-APELLIDO.
          DISPLAY "INGRESE SU APELLIDO: ".
          ACCEPT APELLIDO.
      SOLICI-EDAD.
          DISPLAY "INGRESE SU EDAD: ".
          ACCEPT EDAD.


