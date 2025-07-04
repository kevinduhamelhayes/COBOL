       IDENTIFICATION DIVISION.
       PROGRAM-ID. AcceptDisplay.
       AUTHOR. Ejemplo.
       * Ejemplo de interacción con el usuario usando ACCEPT y DISPLAY en COBOL

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  nombre      PIC X(20).
       01  edad        PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY 'Ingrese su nombre: '
           ACCEPT nombre
           DISPLAY 'Ingrese su edad: '
           ACCEPT edad
           DISPLAY 'Hola, ' nombre ' tienes ' edad ' años.'
           STOP RUN. 