       IDENTIFICATION DIVISION.
       PROGRAM-ID. Evaluador.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMERO             PIC S9(3) VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY 'INGRESE UN NÚMERO: '
           ACCEPT NUMERO
           IF NUMERO > 0
               DISPLAY 'EL NÚMERO ES POSITIVO.'
           ELSE IF NUMERO < 0
               DISPLAY 'EL NÚMERO ES NEGATIVO.'
           ELSE
               DISPLAY 'EL NÚMERO ES CERO.'
           END-IF
           STOP RUN.
