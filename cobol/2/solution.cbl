       IDENTIFICATION DIVISION.
       PROGRAM-ID. solution.
       AUTHOR. Owain Kenway. 

       DATA DIVISION.
          WORKING-STORAGE SECTION.
             01 x USAGE IS BINARY-LONG UNSIGNED.
             01 current USAGE IS BINARY-LONG UNSIGNED VALUE 1.
             01 prev USAGE IS BINARY-LONG UNSIGNED VALUE 0.
             01 temp USAGE IS BINARY-LONG UNSIGNED.
             01 n USAGE IS BINARY-LONG UNSIGNED VALUE 4000000.
             01 soln USAGE IS BINARY-LONG UNSIGNED VALUE 0.
             01 divtwo USAGE IS BINARY-LONG UNSIGNED.


       PROCEDURE DIVISION.
          PERFORM VARYING x FROM 0 BY 1
             UNTIL current IS GREATER THAN OR EQUAL TO n
             MOVE FUNCTION MOD(current,2) TO divtwo
             IF divtwo IS EQUAL TO 0 THEN
                ADD current TO soln
             END-IF
             MOVE prev TO temp
             MOVE current TO prev
             ADD temp TO current
      *      DISPLAY prev " " current " " soln
          END-PERFORM.
          DISPLAY soln.
       STOP RUN.

