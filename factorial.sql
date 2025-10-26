DECLARE 
   n NUMBER:=&INPUT_NUMBER;
   i NUMBER;
   fact NUMBER:=1;
   
  BEGIN
    FOR i in 1 .. n LOOP
      fact:=fact*i;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('THE FACT IS '||fact);
  END; 
  /
