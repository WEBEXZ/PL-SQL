CREATE OR REPLACE PROCEDURE Ciclos AS
  v_contador number := 1;
BEGIN
  -- LOOP
  dbms_output.put_line('LOOP');
  LOOP
    dbms_output.put_line(v_contador);
    v_contador := v_contador + 1;
    EXIT WHEN v_contador = 11;
  END LOOP;

  --WHILE
  dbms_output.put_line('WHILE');
  v_contador := 1;
  WHILE v_contador < 11 LOOP
    dbms_output.put_line(v_contador);
    v_contador := v_contador + 1;
  END LOOP;

  --FOR
  dbms_output.put_line('FOR');
  FOR v_contador in 1..10 LOOP
    dbms_output.put_line(v_contador);
  END LOOP;
END;
