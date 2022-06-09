DECLARE
    rut_alumno ALUMNO.rut%TYPE;
    CURSOR rut_alumnos_con_bono IS
        SELECT RUT FROM ALUMNO WHERE BONOESCOLARIDAD > 0;
BEGIN
    OPEN rut_alumnos_con_bono;
    LOOP
        FETCH rut_alumnos_con_bono INTO rut_alumno;
        EXIT WHEN rut_alumnos_con_bono%notfound;
        DBMS_OUTPUT.PUT_LINE(rut_alumno);
    END LOOP;
    CLOSE rut_alumnos_con_bono;
END;