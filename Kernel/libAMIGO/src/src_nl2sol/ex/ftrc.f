C$TEST FFTC
C TO RUN AS A MAIN PROGRAM REMOVE NEXT LINE
      SUBROUTINE FTRC
C***********************************************************************
C
C  EXAMPLE OF USE OF THE PORT PROGRAM FFTC
C
C***********************************************************************
      REAL A(32),B(32),C(32),D(32)
C
C THE REAL DATA IS ALL ZERO AND THE
C IMAGINARY PART IS E**(-T).
C
C SAVE THE IMAGINARY DATA IN THE VECTOR C FOR LATER COMPARISON
C
      DO 5 K=1,32
   5  A(K) = 0.
C
      B(1) = .5
      C(1) = B(1)
      DO 10 K=2,32
      B(K) = EXP(-.25*FLOAT(K-1))
  10  C(K) = B(K)
C
C CALL FOR THE TRANSFORM AND PRINT THE FOURIER COEFFICIENTS
C
      CALL FFTC(32,A,B)
C
      IWRITE = I1MACH(2)
      WRITE (IWRITE, 997)
  997 FORMAT (1X,9HFREQUENCY,5X,20HFOURIER COEFFICIENTS//)
      WRITE (IWRITE, 998)
  998 FORMAT (1X,7H(=N/NT),5X,9HREAL PART,6X,9HIMAGINARY///)
C
      ENT = 1.0/(32. * 0.25)
      DO 20 K=1,32
      FREQ = FLOAT(K-1) * ENT
      IF (FREQ .GT. 2.) FREQ = -4.0 + FREQ
  20  WRITE (IWRITE,98) FREQ, A(K), B(K)
  98  FORMAT (2X,F6.3,2F15.8)
C
C DO THE INVERSE TRANSFORM
C
      CALL FFTCI(32,A,B)
C
C SCALE THE RESULTS, FIND THE ERROR, AND PRINT
C
      WRITE (IWRITE, 999)
  999 FORMAT (///4X,1HT,7X,18HERROR IN REAL PART,
     1    4X,23HERROR IN IMAGINARY PART//)
C
      ENI = 1./FLOAT(32)
      DO 30 K=1,32
      A(K) = ENI*A(K)
      B(K) = ENI*B(K)
      ERR1  = A(K) - 0.0
      ERR2  = B(K) - C(K)
      T = .25*FLOAT(K-1)
  30  WRITE (IWRITE,99) T,ERR1,ERR2
  99  FORMAT (2X,F4.2,8X,1PE10.2,14X,1PE10.2)
C
      STOP
      END
