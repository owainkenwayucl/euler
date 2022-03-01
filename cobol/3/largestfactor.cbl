       IDENTIFICATION DIVISION.
       PROGRAM-ID. largestfactor.
       AUTHOR. Owain Kenway. 

       DATA DIVISION.
          WORKING-STORAGE SECTION.
             01 x USAGE IS BINARY-DOUBLE UNSIGNED.
             01 temp USAGE IS BINARY-DOUBLE UNSIGNED.
             01 temp2 USAGE IS FLOAT-LONG.

          LINKAGE SECTION.
             01 n USAGE IS BINARY-DOUBLE UNSIGNED.
             01 f USAGE IS BINARY-DOUBLE UNSIGNED.
             01 m USAGE IS BINARY-DOUBLE UNSIGNED.

      * Works out the largest factor of n that's less than or equal to m,
      * stores in f. 
       PROCEDURE DIVISION USING n, f, m.
          MOVE 0 TO f.
          MOVE m TO temp2
          ADD 1 TO temp2
          PERFORM VARYING x FROM 2 BY 1
             UNTIL x IS GREATER THAN OR EQUAL TO temp2
             CALL 'divides' USING n, x, temp
             IF temp IS EQUAL TO 1 THEN
                IF x IS GREATER THAN f THEN
                   MOVE x TO f
                END-IF
             END-IF
             DISPLAY "LF> " x " " temp " " temp2
          END-PERFORM.
       EXIT PROGRAM.
