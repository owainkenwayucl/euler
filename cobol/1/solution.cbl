       IDENTIFICATION DIVISION.
       PROGRAM-ID. solution.
       AUTHOR. Owain Kenway. 

       DATA DIVISION.
          WORKING-STORAGE SECTION.
             01 x USAGE IS BINARY-LONG UNSIGNED.
             01 isok USAGE IS BINARY-LONG UNSIGNED.
             01 n USAGE IS BINARY-LONG UNSIGNED VALUE 1000.
             01 soln USAGE IS BINARY-LONG UNSIGNED VALUE 0.
 
       PROCEDURE DIVISION.
          PERFORM VARYING x FROM 0 BY 1
             UNTIL x IS GREATER THAN OR EQUAL TO n
             MOVE 0 TO isok
             CAll 'divok' USING x, isok
             ADD isok TO soln
          END-PERFORM.
          DISPLAY soln.
       STOP RUN.
