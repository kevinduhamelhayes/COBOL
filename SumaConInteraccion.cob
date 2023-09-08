       IDENTIFICATION DIVISION.
       PROGRAM-ID. AddTwoNumbers.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1        PIC 9(5).
       01 NUM2        PIC 9(5).
       01 TOTAL       PIC 9(6).
       01 ANSWER      PIC Z(6)9.
       
       PROCEDURE DIVISION.
           DISPLAY "Ingrese el primer número (hasta 5 dígitos): ".
           ACCEPT NUM1.
           
           DISPLAY "Ingrese el segundo número (hasta 5 dígitos): ".
           ACCEPT NUM2.
           
           COMPUTE TOTAL = NUM1 + NUM2.
           
           MOVE TOTAL TO ANSWER.
           
           DISPLAY "La suma de los dos números es: " ANSWER.
           STOP RUN.                                               
