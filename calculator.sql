DECLARE
  a NUMBER:=&a;
  b NUMBER:=&b;
  CHOICE CHAR(1):='&CHOICE';
  result NUMBER;
  
BEGIN
  CASE CHOICE
    WHEN '+' THEN
      result:=a+b;
    WHEN '-' THEN
      result:=a-b;
    WHEN '*' THEN
      result:=a*b;
    WHEN '/' THEN
      IF b=0 THEN 
        DBMS_OUTPUT.PUT_LINE('NOT POSSIBLE');
      ELSE
        result:=a/b;
      END IF;
  END CASE;
  DBMS_OUTPUT.PUT_LINE(result);
END ;
/
