      ******************************************************************
      * Author: Josh Kreps
      * Date: July 5, 2021
      * Purpose: Tutorial - multiplication table using PERFORM VARYING
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULT-TABLE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 MTABLE.
          05 ROW occurs 10 times.
             10 COLUM occurs 10 times.
                15 NUMB    pic 999.
       77 GUY  pic 99.
       77 GAL  pic 99.
       77 THEY pic Z9.
       77 BL   pic X(3) VALUE SPACES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       PERFORM VARYING GUY FROM 1 BY 1 UNTIL GUY GREATER THAN 10
          AFTER GAL FROM 1 BY 1 UNTIL GAL GREATER THAN 10
          MULTIPLY GUY BY GAL GIVING NUMB(GUY, GAL)
       END-PERFORM

       DISPLAY "Multiplication table 10x10:"
       DISPLAY BL BL 1 BL 2 BL 3 BL 4 BL 5 BL 6 BL 7 BL 8 BL 9 BL 10 BL

       PERFORM VARYING GUY FROM 1 BY 1 UNTIL GUY GREATER THAN 10
          MOVE GUY TO THEY
          DISPLAY THEY BL WITH NO ADVANCING
          PERFORM VARYING GAL FROM 1 BY 1 UNTIL GAL GREATER THAN 10
             DISPLAY NUMB(GUY, GAL) WITH NO ADVANCING
                IF GAL EQUAL TO 10 THEN
                   DISPLAY BL
                ELSE
                   DISPLAY SPACE WITH NO ADVANCING
                END-IF
          END-PERFORM
       END-PERFORM.
       END PROGRAM MULT-TABLE.
