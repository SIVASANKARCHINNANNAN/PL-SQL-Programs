/*USING WHILE LOOP*/
SET SERVEROUTPUT ON;
DECLARE
    myvalue NUMBER:=1;
BEGIN
    WHILE myvalue<10 
    LOOP
    DBMS_OUTPUT.PUT_LINE('My Value is:'||' '||myvalue);
    myvalue:= myvalue*2;
    END LOOP;
END;
