DECLARE 
    A_NAME VARCHAR(100) := 'HOLA';
    BEGIN
        DECLARE 
            B_NAME VARCHAR(100) := A_NAME || ' MUNDO';
        BEGIN
            DBMS_OUTPUT.PUT_LINE(B_NAME);
        END;
    EXCEPTION
        WHEN OTHERS 
            THEN 
                DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;
/