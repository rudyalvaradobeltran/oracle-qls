DECLARE
    CURSOR rut_alumnos_con_bono IS
        SELECT RUT FROM ALUMNO WHERE BONOESCOLARIDAD > 0;
BEGIN
    FOR alumno IN rut_alumnos_con_bono LOOP
        DBMS_OUTPUT.PUT_LINE(alumno.RUT);
    END LOOP;
END;