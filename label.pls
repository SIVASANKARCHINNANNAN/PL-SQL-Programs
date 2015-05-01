SET SERVEROUTPUT ON;
<<emp_info>> 
DECLARE 
  last_name VARCHAR2(25) := 'Fay'; 
  first VARCHAR2(20); 
  last VARCHAR2(25); 
  email VARCHAR2(25); 
BEGIN 
  SELECT first_name, last_name, email 
  INTO first, last, email 
  FROM employees 
  WHERE last_name = emp_info.last_name; 
  DBMS_OUTPUT.PUT_LINE('employee last name is'||' '||emp_info.last_name);
END;
