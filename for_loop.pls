/* Using for loop*/

BEGIN
    for emp IN
    (
    SELECT first_name, last_name
    FROM employees
    WHERE commission_pct is not NULL    
    )
LOOP
    DBMS_OUTPUT.PUT_LINE(emp.first_name||' '|| emp.last_name|| ' '||' ');
END LOOP;
END;
