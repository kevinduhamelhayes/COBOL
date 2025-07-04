       IDENTIFICATION DIVISION.
       PROGRAM-ID. FileReadWrite.
       AUTHOR. Ejemplo.
       * Ejemplo de lectura y escritura de archivos secuenciales en COBOL

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT archivo-salida ASSIGN TO 'salida.txt'
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT archivo-entrada ASSIGN TO 'salida.txt'
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  archivo-salida.
       01  registro-salida PIC X(50).
       FD  archivo-entrada.
       01  registro-entrada PIC X(50).

       WORKING-STORAGE SECTION.
       01  fin-de-archivo      PIC X VALUE 'N'.
           88  eof             VALUE 'S'.
           88  not-eof         VALUE 'N'.
       01  contador           PIC 9(3) VALUE 1.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN OUTPUT archivo-salida
           PERFORM VARYING contador FROM 1 BY 1 UNTIL contador > 5
               MOVE 'Linea de ejemplo ' TO registro-salida(1:18)
               MOVE FUNCTION NUMVAL (contador) TO registro-salida(19:2)
               WRITE registro-salida
           END-PERFORM
           CLOSE archivo-salida

           OPEN INPUT archivo-entrada
           PERFORM UNTIL eof
               READ archivo-entrada
                   AT END
                       SET eof TO TRUE
                   NOT AT END
                       DISPLAY 'Leido: ' registro-entrada
               END-READ
           END-PERFORM
           CLOSE archivo-entrada
           STOP RUN. 