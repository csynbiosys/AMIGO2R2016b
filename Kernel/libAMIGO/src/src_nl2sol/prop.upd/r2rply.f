      SUBROUTINE R2RPLY(TYPE, K, QK)
C THIS ROUTINE CALCULATES SCALAR QUANTITIES USED TO
C COMPUTE THE NEXT K POLYNOMIAL AND NEW ESTIMATES OF
C THE QUADRATIC COEFFICIENTS.
C TYPE - INTEGER VARIABLE SET HERE INDICATING HOW THE
C CALCULATIONS ARE NORMALIZED TO AVOID OVERFLOW
C
      COMMON /P66PLY/ SR, SI, U,
     1 V, A, B, C, D, A1, A2, A3, A6, A7, E, F, G,
     2 H, SZR, SZI, LZR, LZI, ETA, ARE, MRE, N, NN
C
      INTEGER N, NN
      INTEGER TYPE
      REAL ETA, ARE, MRE
C
      REAL K(1), QK(1), SR, SI, U, V, A, B, C, D,
     1 A1, A2, A3, A6, A7, E, F, G, H, SZR, SZI,
     2 LZR, LZI
      REAL ABS
C SYNTHETIC DIVISION OF K BY THE QUADRATIC 1,U,V
      CALL R8RPLY(N, U, V, K, QK, C, D)
      IF (ABS(C).GT.ABS(K(N))*100.*ETA) GO TO 10
      IF (ABS(D).GT.ABS(K(N-1))*100.*ETA) GO TO 10
      TYPE = 3
C TYPE=3 INDICATES THE QUADRATIC IS ALMOST A FACTOR
C OF K
      RETURN
   10 IF (ABS(D).LT.ABS(C)) GO TO 20
      TYPE = 2
C TYPE=2 INDICATES THAT ALL FORMULAS ARE DIVIDED BY D
      E = A/D
      F = C/D
      G = U*B
      H = V*B
      A3 = (A+G)*E + H*(B/D)
      A1 = B*F - A
      A7 = (F+U)*A + H
      RETURN
   20 TYPE = 1
C TYPE=1 INDICATES THAT ALL FORMULAS ARE DIVIDED BY C
      E = A/C
      F = D/C
      G = U*E
      H = V*B
      A3 = A*E + (H/C+G)*B
      A1 = B - A*(D/C)
      A7 = A + G*D + H*F
      RETURN
      END
