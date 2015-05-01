/*Using %ROWTYPE*/
SET SERVEROUTPUT ON;
DECLARE
CURSOR curemp_rec is
SELECT first_name, last_name,email
FROM employees
WHERE employee_id =100;

emp_reco curemp_rec%ROWTYPE;

BEGIN
    OPEN curemp_rec;
        fetch curemp_rec into emp_reco;
     IF curemp_rec %FOUND THEN
        CLOSE curemp_rec;
        DBMS_OUTPUT.PUT_LINE(emp_reco.first_name||' '||emp_reco.last_name||' '||emp_reco.email||' ');
    ELSE
        DBMS_OUTPUT.PUT_lINE('No matching employees found');
END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No matching employees provided from the user');
END;
