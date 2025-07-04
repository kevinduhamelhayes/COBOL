       IDENTIFICATION DIVISION.
       PROGRAM-ID. PerformProcedures.
       AUTHOR. Ejemplo.
       * Ejemplo de uso de PERFORM con procedimientos en COBOL

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  i        PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM SALUDAR 3 TIMES
           PERFORM CONTAR-DE-1-A-5
           STOP RUN.

       SALUDAR.
           DISPLAY '¡Hola desde el procedimiento SALUDAR!'
           EXIT.

       CONTAR-DE-1-A-5.
           PERFORM VARYING i FROM 1 BY 1 UNTIL i > 5
               DISPLAY 'Contando: ' i
           END-PERFORM
           EXIT. 