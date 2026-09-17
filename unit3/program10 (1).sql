/*
Name: Ausura Keshar
Program: 10
Description: Demonstration of SQLCODE and SQLERRM
*/

DECLARE
    a NUMBER := 10;
    b NUMBER := 0;
    result NUMBER;
BEGIN
    result := a / b;

    DBMS_OUTPUT.PUT_LINE('Result: ' || result);

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('SQLCODE: ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('SQLERRM: ' || SQLERRM);
END;
/
