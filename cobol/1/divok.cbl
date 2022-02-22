       IDENTIFICATION DIVISION.
       PROGRAM-ID. divok.

       DATA DIVISION.
          WORKING-STORAGE SECTION.
             01 divthree USAGE IS BINARY-LONG UNSIGNED.
             01 divfive USAGE IS BINARY-LONG UNSIGNED.
          LINKAGE SECTION.
             01 x USAGE IS BINARY-LONG UNSIGNED.
             01 isok USAGE IS BINARY-LONG UNSIGNED.

       PROCEDURE DIVISION USING x, isok.
          MOVE 0 TO isok.
          MOVE FUNCTION MOD(x,3) TO divthree.
          MOVE FUNCTION MOD(x,5) to divfive.
          IF divthree IS EQUAL TO 0 THEN
             MOVE x to isok
          END-IF.
          IF divfive IS EQUAL TO 0 THEN
             MOVE x to isok
          END-IF.
       EXIT PROGRAM divok.


