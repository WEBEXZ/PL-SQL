CREATE OR REPLACE FUNCTION buscar(p_id IN STUDENTS.ID%TYPE)
RETURN STUDENTS.CURRENT_CREDITS%TYPE AS
  v_creditos STUDENTS.CURRENT_CREDITS%TYPE;
BEGIN
  SELECT CURRENT_CREDITS
  INTO v_creditos
  FROM STUDENTS
  WHERE ID = p_id;

  RETURN v_creditos;
END buscar;

DECLARE
  v_resultado STUDENTS.CURRENT_CREDITS%TYPE;
BEGIN
  v_resultado := buscar(10000);
  IF v_resultado > 10 THEN
    dbms_output.put_line('Alumno Becado');
  END IF;
END;
