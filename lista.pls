DECLARE
CURSOR c_especialidad IS
  SELECT DISTINCT MAJOR
  FROM STUDENTS;

CURSOR c_estudiante(p_major varchar2) IS
 SELECT FIRST_NAME, LAST_NAME
 FROM STUDENTS
 WHERE MAJOR = p_major;

BEGIN
  FOR r_especialidad IN c_especialidad LOOP
  dbms_output.put_line('ESPECIALIDAD: '||r_especialidad.MAJOR);
    FOR r_estudiante IN c_estudiante(r_especialidad.MAJOR) LOOP
      dbms_output.put_line(r_estudiante.FIRST_NAME||' '||r_estudiante.LAST_NAME);
    END LOOP;
  END LOOP;
END;
