       IDENTIFICATION DIVISION.
       PROGRAM-ID. Level88Example.
       AUTHOR. Ejemplo.
       * Ejemplo de uso de nivel 88 (condiciones) en COBOL

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  estado-civil    PIC X.
           88  soltero     VALUE 'S'.
           88  casado      VALUE 'C'.
           88  otro        VALUE 'O'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 'C' TO estado-civil
           IF soltero
               DISPLAY 'La persona es soltera.'
           ELSE IF casado
               DISPLAY 'La persona es casada.'
           ELSE IF otro
               DISPLAY 'Otro estado civil.'
           ELSE
               DISPLAY 'Estado civil desconocido.'
           END-IF
           STOP RUN. 