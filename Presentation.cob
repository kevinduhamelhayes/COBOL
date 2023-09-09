       IDENTIFICATION DIVISION.
       PROGRAM-ID. CoverLetter.
       AUTHOR. Kevin Duhamel Hayes.
       DATE-WRITTEN. September 6, 2023.
       REMARKS. COBOL-styled Cover Letter for AS/400 position.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 APPLICANT-DETAILS.
          05 APPLICANT-NAME      PIC X(30) VALUE 'Kevin Duhamel Hayes'.
          05 APPLICANT-EMAIL     PIC X(30) VALUE 'kevinduhamelh@gmail.com'.
          05 APPLICANT-PHONE     PIC X(15) VALUE '+543415883040'.
       
       01 COMPANY-DETAILS.
          05 COMPANY-NAME        PIC X(30) VALUE 'Patagonia IT'.
          05 HIRING-MANAGER      PIC X(30) VALUE 'rrhh'.
          
       PROCEDURE DIVISION.
       DISPLAY 'Dear ' HIRING-MANAGER ' of ' COMPANY-NAME ', '.
       DISPLAY ' '.
       DISPLAY 'I am writing to express my keen interest in the COBOL AS/400 developer position at ' COMPANY-NAME '. With my extensive experience in COBOL programming, especially in the AS/400 environment, I am confident in my ability to contribute effectively to your team.'.
       DISPLAY ' '.
       DISPLAY 'Having worked on various legacy systems, I appreciate the intricacies of COBOL and understand the importance of maintaining and updating these systems for modern business needs. I am eager to bring my expertise to ' COMPANY-NAME ' and collaborate with your team to achieve our mutual goals.'.
       DISPLAY ' '.
       DISPLAY 'Thank you for considering my application. I am looking forward to the opportunity of discussing my potential contributions to your team. Please find my contact details below:'.
       DISPLAY 'Name: ' APPLICANT-NAME.
       DISPLAY 'Email: ' APPLICANT-EMAIL.
       DISPLAY 'Phone: ' APPLICANT-PHONE.
       DISPLAY ' '.
       DISPLAY 'Sincerely,'.
       DISPLAY ' '.
       DISPLAY APPLICANT-NAME.
       STOP RUN.