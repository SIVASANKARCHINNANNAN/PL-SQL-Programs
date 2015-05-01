SET SERVEROUTPUT ON;
SET AUTOCOMMIT ON;
DECLARE
--Using Cursor
CURSOR Curemp is
SELECT first_name,last_name, email
FROM employees
WHERE employee_id = &emp_id; 
--declaring local variable
first varchar2(25);
last varchar2(25);
email varchar2(30);
-- Executable
BEGIN
    OPEN Curemp;
    Fetch Curemp into first,last,email;
    IF Curemp%NOTFOUND THEN
        RAISE NO_DATA_FOUND;
    ELSE
    Fetch Curemp into first,last,email;
        IF Curemp%FOUND THEN 
        RAISE TOO_MANY_ROWS;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee information id:'||first||' '||last||' '||'- '||email);
        END IF;
    END IF;
    CLOSE Curemp;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No matching employee data found');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More than one employee found');
END; 
