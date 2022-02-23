       IDENTIFICATION DIVISION.
       PROGRAM-ID. solution.
       AUTHOR. Owain Kenway. 

       DATA DIVISION.
          WORKING-STORAGE SECTION.
             01 x USAGE IS BINARY-LONG UNSIGNED.
             01 isok USAGE IS BINARY-LONG UNSIGNED.
             01 n USAGE IS BINARY-LONG UNSIGNED VALUE 1000.
             01 soln USAGE IS BINARY-LONG UNSIGNED VALUE 0.
             01 divthree USAGE IS BINARY-LONG UNSIGNED.
             01 divfive USAGE IS BINARY-LONG UNSIGNED.

 
       PROCEDURE DIVISION.
          PERFORM VARYING x FROM 0 BY 1
             UNTIL x IS GREATER THAN OR EQUAL TO n
             MOVE 0 TO isok
             MOVE FUNCTION MOD(x,3) TO divthree
             MOVE FUNCTION MOD(x,5) to divfive
             IF divthree IS EQUAL TO 0 THEN
                MOVE x to isok
             END-IF
             IF divfive IS EQUAL TO 0 THEN
                MOVE x to isok
             END-IF
             ADD isok TO soln
          END-PERFORM.
          DISPLAY soln.
       STOP RUN.
