       IDENTIFICATION DIVISION.
       PROGRAM-ID. DateHandling.
       AUTHOR. Ejemplo.
       * Ejemplo de manejo de fechas en COBOL

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  fecha-sistema.
           05  anio    PIC 9(4).
           05  mes     PIC 9(2).
           05  dia     PIC 9(2).
       01  fecha-string    PIC X(10).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT fecha-sistema FROM DATE YYYYMMDD
           MOVE anio TO fecha-string(1:4)
           MOVE '-' TO fecha-string(5:1)
           MOVE mes TO fecha-string(6:2)
           MOVE '-' TO fecha-string(8:1)
           MOVE dia TO fecha-string(9:2)
           DISPLAY 'Fecha del sistema: ' fecha-string
           STOP RUN. 