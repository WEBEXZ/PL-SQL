DECLARE
  v_contador NUMBER;
BEGIN
  SELECT COUNT(*)
  INTO v_contador
  FROM STUDENTS
  WHERE MAJOR = 'History';

  dbms_output.put_line('Total de registros: '||v_contador);
END;
