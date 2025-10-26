DECLARE
  n NUMBER:=&INPUT_NUMBER;
  a NUMBER:=0;
  b NUMBER:=1;
  c NUMBER;
BEGIN
  DBMS_OUTPUT.PUT_LINE(a);
  DBMS_OUTPUT.PUT_LINE(b);
  FOR i in 3 .. n LOOP
    c:=a+b;
    DBMS_OUTPUT.PUT_LINE(c);
    a:=b;
    b:=c;
  END LOOP;

  
END;
/
