  DECLARE
    n NUMBER:=&input_number;
    i NUMBER;
    is_prime BOOLEAN:=TRUE;
    
  BEGIN
    IF n<=1 THEN
      is_prime:=FALSE;
    ELSE
      FOR i in 2 .. TRUNC(SQRT(n))LOOP
        IF MOD(n,i)=0 THEN
          is_prime:=FALSE;
            EXIT;
          END IF;
      END LOOP;
    END IF;
    
    IF is_prime THEN
      DBMS_OUTPUT.PUT_LINE(n||'IS PRIME');
    ELSE
      DBMS_OUTPUT.PUT_LINE(n||'IS NOT PRIME');
    
    END IF;
  END;
  /
