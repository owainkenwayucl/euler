       IDENTIFICATION DIVISION.
       PROGRAM-ID. isprime.
       AUTHOR. Owain Kenway. 

       DATA DIVISION.
          WORKING-STORAGE SECTION.
             01 temp USAGE IS BINARY-DOUBLE UNSIGNED VALUE 0.
             01 x USAGE IS BINARY-DOUBLE UNSIGNED VALUE 0.
             01 temp2 USAGE IS FLOAT-LONG.
             01 m USAGE IS BINARY-DOUBLE UNSIGNED.

          LINKAGE SECTION.
             01 n USAGE IS BINARY-DOUBLE UNSIGNED.
             01 d USAGE IS BINARY-DOUBLE UNSIGNED.

       PROCEDURE DIVISION USING n, d.
          MOVE 0 TO temp.

          MOVE FUNCTION SQRT(n) TO temp2.
          ADD 1 TO temp2.
          MOVE FUNCTION INTEGER(temp2) TO m.

          CALL 'largestfactor' USING n, temp, m.

          IF temp IS EQUAL TO 0 THEN
             MOVE n TO d
          ELSE
             MOVE 0 TO d
          END-IF.
       EXIT PROGRAM.
