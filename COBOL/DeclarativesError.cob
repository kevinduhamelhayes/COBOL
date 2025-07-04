       IDENTIFICATION DIVISION.
       PROGRAM-ID. DeclarativesError.
       AUTHOR. Ejemplo.
       * Ejemplo de uso de DECLARATIVES para control de errores en COBOL

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT archivo ASSIGN TO 'noexiste.txt'
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  archivo.
       01  registro  PIC X(50).

       WORKING-STORAGE SECTION.
       01  fin-de-archivo      PIC X VALUE 'N'.
           88  eof             VALUE 'S'.
           88  not-eof         VALUE 'N'.

       PROCEDURE DIVISION.
       DECLARATIVES.
       ERROR-ARCHIVO SECTION.
           USE AFTER STANDARD ERROR PROCEDURE ON archivo.
       ERROR-PROCESO.
           DISPLAY '¡Error al abrir o leer el archivo!'
           MOVE 'S' TO fin-de-archivo
           EXIT.
       END DECLARATIVES.

       MAIN-PROCEDURE.
           OPEN INPUT archivo
           PERFORM UNTIL eof
               READ archivo
                   AT END
                       SET eof TO TRUE
                   NOT AT END
                       DISPLAY 'Leido: ' registro
               END-READ
           END-PERFORM
           CLOSE archivo
           STOP RUN. 