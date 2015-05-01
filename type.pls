/* Using %TYPE */
DECLARE
TYPE emp_info is RECORD (first employees.first_name%TYPE,
                         last employees.last_name%TYPE,
                         email employees.email%TYPE);
    emp_rec emp_info;

BEGIN
    SELECT first_name,last_name,email
    INTO emp_rec
    FROM employees 
    WHERE last_name='Vargas';
    DBMS_OUTPUT.PUT_LINE('The queried employees mail id:'||emp_rec.email);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No matching employees found');
END;
