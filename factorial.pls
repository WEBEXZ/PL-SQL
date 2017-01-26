CREATE OR REPLACE PROCEDURE Factorial(p_numero IN NUMBER) AS
  v_factorial NUMBER := 1;
BEGIN
  FOR v_contador IN 1 .. p_numero LOOP
    v_factorial := v_contador * v_factorial;
  END LOOP;
  dbms_output.put_line(v_factorial);
END;
