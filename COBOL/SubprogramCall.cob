       IDENTIFICATION DIVISION.
       PROGRAM-ID. SubprogramCall.
       AUTHOR. Ejemplo.
       * Ejemplo de llamada a subprograma (CALL) en COBOL

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  numero1         PIC 9(3) VALUE 7.
       01  numero2         PIC 9(3) VALUE 5.
       01  resultado       PIC 9(4).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           CALL 'SUMAR' USING numero1, numero2, resultado
           DISPLAY 'La suma de ' numero1 ' y ' numero2 ' es: ' resultado
           STOP RUN.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUMAR.
       DATA DIVISION.
       LINKAGE SECTION.
       01  l-num1          PIC 9(3).
       01  l-num2          PIC 9(3).
       01  l-res           PIC 9(4).
       PROCEDURE DIVISION USING l-num1, l-num2, l-res.
           COMPUTE l-res = l-num1 + l-num2
           EXIT PROGRAM. 