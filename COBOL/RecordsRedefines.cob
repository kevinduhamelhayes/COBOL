       IDENTIFICATION DIVISION.
       PROGRAM-ID. RecordsRedefines.
       AUTHOR. Ejemplo.
       * Ejemplo de uso de registros y REDEFINES en COBOL

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  persona.
           05  nombre      PIC X(20).
           05  edad       PIC 99.
           05  sexo       PIC X.
       01  persona-cadena REDEFINES persona PIC X(23).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 'Juan Perez         ' TO nombre
           MOVE 30 TO edad
           MOVE 'M' TO sexo
           DISPLAY 'Registro persona:'
           DISPLAY 'Nombre: ' nombre
           DISPLAY 'Edad: ' edad
           DISPLAY 'Sexo: ' sexo
           DISPLAY 'Como cadena: ' persona-cadena
           STOP RUN. 