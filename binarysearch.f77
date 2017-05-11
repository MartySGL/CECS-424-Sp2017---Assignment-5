      PROGRAM BINARYSEARCH

       INTEGER NBRS(100)
       INTEGER RANGE
       INTEGER START , FINISH
       INTEGER ISFOUND
       INTEGER J
       INTEGER COUNT
       INTEGER SORTED
       INTEGER TEMP

       PRINT *, 'Enter the number of values in your array:'
       READ *, N
       
       PRINT *, 'Enter each number of the array followed by a new line:'
       DO I = 1, N
         READ *, NBRS(I)
       END DO

       COUNT = 1
       SORTED = 0
       DO WHILE(SORTED .EQ. 0)
         SORTED = 1
         DO J = 1,N - COUNT
           if(NBRS(J) .GT. NBRS(J + 1)) THEN
             TEMP = NBRS(J)
             NBRS(J) = NBRS(J + 1)
             NBRS(J + 1) = TEMP
             SORTED = 0
           END IF
          END DO
         COUNT = COUNT + 1
       END DO

       ISFOUND = 0

       DO WHILE( ISFOUND .NE. 1)
        PRINT *, 'Enter the number you want to find:'
        READ *, VAL

        START =  1
        FINISH = N
        RANGE = FINISH - START
        MID = (START + FINISH) /2

        DO WHILE( NBRS(MID) .NE. VAL .AND. RANGE .GT. 0)
         IF (VAL .GT. NBRS(MID))THEN
           START = MID + 1
         ELSE
           FINISH = MID - 1
         END IF
         RANGE = FINISH - START
         MID = (START + FINISH)/2
        END DO

        IF( NBRS(MID) .NE. VAL) THEN
          PRINT *, 'The value is not found'
        ELSE
          PRINT *, 'The value has been found!'
           ISFOUND = 1
        END IF
       END DO

      END
