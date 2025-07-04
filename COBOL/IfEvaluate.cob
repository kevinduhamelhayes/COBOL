       IDENTIFICATION DIVISION.
       PROGRAM-ID. IfEvaluate.
       AUTHOR. Ejemplo.
       * Ejemplo de uso de IF/ELSE y EVALUATE en COBOL

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  numero1         PIC 9(2) VALUE 10.
       01  numero2         PIC 9(2) VALUE 20.
       01  resultado       PIC 9(3).
       01  operacion       PIC X VALUE '+'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           * Uso de IF/ELSE
           IF numero1 > numero2
               DISPLAY 'numero1 es mayor que numero2'
           ELSE
               DISPLAY 'numero1 NO es mayor que numero2'
           END-IF

           * Uso de EVALUATE (switch/case)
           EVALUATE operacion
               WHEN '+'
                   COMPUTE resultado = numero1 + numero2
                   DISPLAY 'Suma: ' resultado
               WHEN '-'
                   COMPUTE resultado = numero1 - numero2
                   DISPLAY 'Resta: ' resultado
               WHEN '*'
                   COMPUTE resultado = numero1 * numero2
                   DISPLAY 'Multiplicacion: ' resultado
               WHEN '/'
                   IF numero2 NOT = 0
                       COMPUTE resultado = numero1 / numero2
                       DISPLAY 'Division: ' resultado
                   ELSE
                       DISPLAY 'No se puede dividir por cero.'
                   END-IF
               WHEN OTHER
                   DISPLAY 'Operacion no reconocida.'
           END-EVALUATE
           STOP RUN. 