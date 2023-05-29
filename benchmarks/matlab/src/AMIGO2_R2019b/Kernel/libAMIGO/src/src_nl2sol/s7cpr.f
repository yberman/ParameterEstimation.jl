      SUBROUTINE  S7CPR(C, IV, L, LIV)
C
C  ***  PRINT C FOR    NSG (ETC.)  ***
C
      INTEGER L, LIV
      INTEGER IV(LIV)
      REAL C(L)
C
      INTEGER I, PU
C
      INTEGER PRUNIT, SOLPRT
C
C/6
C     DATA PRUNIT/21/, SOLPRT/22/
C/7
      PARAMETER (PRUNIT=21, SOLPRT=22)
C/
C  ***  BODY  ***
C
      IF (IV(1) .GT. 11) GO TO 999
      IF (IV(SOLPRT) .EQ. 0) GO TO 999
      PU = IV(PRUNIT)
      IF (PU .EQ. 0) GO TO 999
      IF (L .GT. 0) WRITE(PU,10) (I, C(I), I = 1, L)
 10   FORMAT(/21H LINEAR PARAMETERS...//(1X,I5,E16.6))
C
 999  RETURN
C  ***  LAST LINE OF  S7CPR FOLLOWS  ***
      END
