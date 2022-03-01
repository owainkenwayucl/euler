       IDENTIFICATION DIVISION.
       PROGRAM-ID. testlargestfactor.
       AUTHOR. Owain Kenway. 

       DATA DIVISION.
          WORKING-STORAGE SECTION.
             01 n USAGE IS BINARY-DOUBLE UNSIGNED VALUE 20.
             01 soln USAGE IS BINARY-DOUBLE UNSIGNED VALUE 0.
             01 x USAGE IS BINARY-DOUBLE UNSIGNED.

       PROCEDURE DIVISION.
          PERFORM VARYING x FROM 2 BY 1
             UNTIL x IS GREATER THAN OR EQUAL TO n
             CALL 'largestfactor' USING n, soln, x 

             DISPLAY x ": " soln
          END-PERFORM.
       STOP RUN.
