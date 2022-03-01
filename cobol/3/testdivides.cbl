       IDENTIFICATION DIVISION.
       PROGRAM-ID. testdivides.
       AUTHOR. Owain Kenway. 

       DATA DIVISION.
          WORKING-STORAGE SECTION.
             01 n USAGE IS BINARY-LONG UNSIGNED VALUE 20.
             01 soln USAGE IS BINARY-LONG UNSIGNED VALUE 0.
             01 x USAGE IS BINARY-LONG UNSIGNED.

       PROCEDURE DIVISION.
          PERFORM VARYING x FROM 2 BY 1
             UNTIL x IS GREATER THAN OR EQUAL TO n
             CALL 'divides' USING n, x, soln

             DISPLAY x ": " soln
          END-PERFORM.
       STOP RUN.
