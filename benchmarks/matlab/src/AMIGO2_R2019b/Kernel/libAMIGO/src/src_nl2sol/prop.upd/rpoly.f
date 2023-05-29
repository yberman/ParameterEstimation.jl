      SUBROUTINE RPOLY(DEGREE,COEFF,ZEROR,ZEROI)
C
C FINDS THE ZEROS OF A POLYNOMIAL WITH REAL COEFFICIENTS.
C
C  INPUTS -
C
C     COEFF         -  REAL VECTOR OF THE COEFFICIENTS
C                      IN ORDER OF DECREASING POWERS.
C
C     DEGREE        -  INTEGER DEGREE OF POLYNOMIAL.
C
C  OUTPUTS -
C
C     ZEROR, ZEROI  -  REAL VECTORS OF THE REAL
C                      AND IMAGINARY PARTS OF THE ZEROS.
C
C
C  ERROR STATES -
C
C    1    - DEGREE IS LESS THAN 1
C    2    - LEADING COEFFICIENT IS ZERO
C    3    - THE DYNAMIC STORAGE STACK IS NOT BIG ENOUGH
C    NNN  - ONLY NNN (.LT. DEGREE) ZEROS HAVE BEEN
C           FOUND (RECOVERABLE)
C
C
C PORT NOTE -
C
C THE ORIGINAL PROGRAM HAS BEEN ADAPTED TO PORT BY -
C
C   (1) PUTTING IN AUTOMATIC ERROR HANDLING.
C   (2) SUBSTITUTING DYNAMIC STACK ALLOCATION FOR THE DIMENSIONED
C       ARRAYS IN NAMED COMMON.
C   (3) CHANGING THE NAMES OF THE INTERNAL ROUTINES TO AVOID USER
C       NAME CONFLICT.
C
C  THE FOLLOWING NAME EQUIVALENCES (ORIGINAL - NEW(S.P.)) APPLY -
C
C            RPOLY    -   R1RPLY
C            CALCSC   -   R2RPLY
C            FXSHFR   -   R3RPLY
C            NEWEST   -   R4RPLY
C            NEXTK    -   R5RPLY
C            QUAD     -   R6RPLY
C            QUADIT   -   R7RPLY
C            QUADSD   -   R8RPLY
C            REALIT   -   R9RPLY
C
C
C DYNAMIC STORAGE SPACE USED -
C
C    THE RPOLY PROGRAMS USE 7*(DEGREE+1)
C    REAL LOCATIONS IN THE DYNAMIC STORAGE STACK.
C
C COMMON AREA
      COMMON/CSTAK/DSTAK(500)
C
      INTEGER DEGREE
      REAL RSTAK(1000)
      DOUBLE PRECISION DSTAK
      REAL COEFF(1),ZEROR(1),ZEROI(1)
      LOGICAL FAIL
C
      EQUIVALENCE (DSTAK(1),RSTAK(1))
C
C THE DEGREE IS LESS THAN 1
C
C/6S
C     IF (DEGREE .LT. 1) CALL SETERR(
C    1   34H RPOLY - THE DEGREE IS LESS THAN 1,34,1,2)
C/7S
      IF (DEGREE .LT. 1) CALL SETERR(
     1   ' RPOLY - THE DEGREE IS LESS THAN 1',34,1,2)
C/
C
C ALGORITHM FAILS IF THE LEADING COEFFICIENT IS ZERO.
C
C/6S
C     IF (COEFF(1) .EQ. 0.0E0) CALL SETERR(
C    1   36H RPOLY - LEADING COEFFICIENT IS ZERO,36,2,2)
C/7S
      IF (COEFF(1) .EQ. 0.0E0) CALL SETERR(
     1   ' RPOLY - LEADING COEFFICIENT IS ZERO',36,2,2)
C/
C
C SET UP THE STORAGE IN THE DYNAMIC STORAGE STACK -
C IF THERE IS ROOM
C
      NN = DEGREE + 1
C
      NLEFT = ISTKQU(3) - 7*NN
C/6S
C     IF (NLEFT .LE. 0) CALL SETERR(
C    1   47H RPOLY - THE DYNAMIC STORAGE LEFT IS NOT ENOUGH,47,3,2)
C/7S
      IF (NLEFT .LE. 0) CALL SETERR(
     1   ' RPOLY - THE DYNAMIC STORAGE LEFT IS NOT ENOUGH',47,3,2)
C/
C
      NNN = 7*NN
      IP    = ISTKGT(NNN,3)
      IQP   = IP    + NN
      IK    = IQP   + NN
      IQK   = IK    + NN
      ISVK  = IQK   + NN
      ITEMP = ISVK  + NN
      IPT   = ITEMP + NN
C
C
C  CALL THE JENKINS-TRAUB ROUTINE (OLD RPOLY IS NOW R1RPLY) WITH
C  THE STACK LOCATIONS INCLUDED IN THE CALL.
C
      CALL R1RPLY(COEFF,DEGREE,ZEROR,ZEROI,FAIL,
     1  RSTAK(IP),RSTAK(IQP),RSTAK(IK),RSTAK(IQK),RSTAK(ISVK),
     2  RSTAK(ITEMP),RSTAK(IPT))
C
C  SEE IF THE THING FAILED
C
      IF (.NOT. FAIL)  GO TO 10
C
C  OTHERWISE FIGURE HOW MANY ROOTS WERE FOUND
C
      KP10 = DEGREE+10
C
C/6S
C     CALL SETERR(
C    1   37H RPOLY - ONLY K ZEROS HAVE BEEN FOUND,37,KP10,1)
C/7S
      CALL SETERR(
     1   ' RPOLY - ONLY K ZEROS HAVE BEEN FOUND',37,KP10,1)
C/
C
  10  CALL ISTKRL(1)
      RETURN
      END
