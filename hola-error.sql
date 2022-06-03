/* EN CASO DE EXISTIR ERROR SQLERRM LO DEVOLVERÍA Y MOSTRARÍA EL OUTPUT  */
/* ORA-06502: PL/SQL: error : buffer de cadenas de caracteres demasiado pequeño numérico o de valor */
DECLARE 
    V_NAME VARCHAR(1);
    BEGIN
        V_NAME := ('HOLA ESTA ES UNA VARIABLE');
        DBMS_OUTPUT.PUT_LINE(V_NAME);
        EXCEPTION
        WHEN OTHERS 
            THEN
                DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;
/