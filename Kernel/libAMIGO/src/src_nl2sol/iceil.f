      INTEGER FUNCTION ICEIL(X)
C
C  ICEIL RETURNS CEIL(X)
C
      ICEIL = INT(X)
      IF (X .LE. 0.0) RETURN
      IF (FLOAT(ICEIL) .NE. X) ICEIL = ICEIL + 1
C
      RETURN
      END
