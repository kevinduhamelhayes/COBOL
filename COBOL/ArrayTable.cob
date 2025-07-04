       IDENTIFICATION DIVISION.
       PROGRAM-ID. ArrayTable.
       AUTHOR. Ejemplo.
       * Ejemplo de uso de tablas (arrays) en COBOL

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  tabla-numeros.
           05  numeros   PIC 9(3) OCCURS 1 TO 10 TIMES DEPENDING ON cantidad.
       01  cantidad     PIC 9(2) VALUE 5.
       01  i            PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           * Inicializar la tabla
           PERFORM VARYING i FROM 1 BY 1 UNTIL i > cantidad
               MOVE i TO numeros(i)
           END-PERFORM

           * Mostrar los valores de la tabla
           DISPLAY 'Valores en la tabla:'
           PERFORM VARYING i FROM 1 BY 1 UNTIL i > cantidad
               DISPLAY 'Elemento ' i ': ' numeros(i)
           END-PERFORM
           STOP RUN. 