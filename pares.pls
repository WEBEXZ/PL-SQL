CREATE OR REPLACE PROCEDURE Pares(p_numero IN NUMBER) AS
BEGIN
  FOR v_contador IN 1 .. p_numero LOOP
    IF MOD(v_contador, 2) = 0 THEN
      dbms_output.put_line(v_contador);
    END IF;
  END LOOP;
END;
