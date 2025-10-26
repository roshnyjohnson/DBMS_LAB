DECLARE
  str VARCHAR2(100):='&INPUT_STRING';
  rev VARCHAR2(100):='';
  
BEGIN
  FOR i in  REVERSE 1 ..LENGTH(str) LOOP
    rev:=rev||SUBSTR(str,i,1);
  END LOOP;
  
  IF rev=str THEN
    DBMS_OUTPUT.PUT_LINE('YES');
  else
    DBMS_OUTPUT.PUT_LINE('NO');
  END IF;
  
END ;
/
