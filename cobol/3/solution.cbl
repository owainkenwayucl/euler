       IDENTIFICATION DIVISION.
       PROGRAM-ID. solution.
       AUTHOR. Owain Kenway. 

       DATA DIVISION.
          WORKING-STORAGE SECTION.
      *      01 n USAGE IS BINARY-DOUBLE UNSIGNED VALUE 13195.
      * Gnu COBOL is very slow but this is the full solution:
             01 n USAGE IS BINARY-DOUBLE UNSIGNED VALUE 600851475143.
             01 soln USAGE IS BINARY-DOUBLE UNSIGNED VALUE 0.
             01 u USAGE IS BINARY-DOUBLE UNSIGNED VALUE 0.
             01 temp USAGE IS BINARY-DOUBLE UNSIGNED VALUE 0.
             01 temp2 USAGE IS FLOAT-LONG.

       PROCEDURE DIVISION.
          MOVE FUNCTION SQRT(n) TO temp2.
          ADD 1 TO temp2
          MOVE FUNCTION INTEGER(temp2) TO temp
         
          DISPLAY u " " soln " " n
          CALL 'largestfactor' USING n, u, temp.
          PERFORM UNTIL soln IS GREATER THAN 0
             DISPLAY "S> " u " " soln " " n
             CALL 'isprime' USING u, temp
             IF temp IS GREATER THAN 0 THEN
                MOVE temp TO soln
             END-IF
             move u to temp
             subtract 1 from temp 
             CALL 'largestfactor' USING n, u, temp
          END-PERFORM.

          DISPLAY "SOLUTION: " soln.
       STOP RUN.
