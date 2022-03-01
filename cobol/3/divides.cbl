       IDENTIFICATION DIVISION.
       PROGRAM-ID. divides.
       AUTHOR. Owain Kenway. 

       DATA DIVISION.
          WORKING-STORAGE SECTION.

          LINKAGE SECTION.
             01 x USAGE IS BINARY-DOUBLE UNSIGNED.
             01 n USAGE IS BINARY-DOUBLE UNSIGNED.
             01 d USAGE IS BINARY-DOUBLE UNSIGNED.

       PROCEDURE DIVISION USING x, n, d.
          MOVE FUNCTION MOD(x,n) TO d.
          IF d IS GREATER THAN 0 THEN
             MOVE 0 TO d
          ELSE
             MOVE 1 TO d
          END-IF.
          
       EXIT PROGRAM.
