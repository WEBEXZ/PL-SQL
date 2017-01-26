CREATE OR REPLACE PROCEDURE operaciones AS
  v_uno NUMBER := 15;
  v_dos NUMBER := 5;
BEGIN
  dbms_output.put_line('Bloque Anónimo');
  DECLARE
    v_suma NUMBER;
  BEGIN
    v_suma := v_uno + v_dos;
    dbms_output.put_line(v_suma);
  EXCEPTION
    WHEN OTHERS THEN
    dbms_output.put_line('Error Interno Uno'||SQLERRM);
  END;
  DECLARE
    v_multiplicacion NUMBER;
  BEGIN
    v_multiplicacion := v_uno * v_dos;
    dbms_output.put_line(v_multiplicacion);
  EXCEPTION
    WHEN OTHERS THEN
    dbms_output.put_line('Error Interno Dos'||SQLERRM);
  END;
EXCEPTION
  WHEN OTHERS THEN
  dbms_output.put_line('Error'||SQLERRM);
END operaciones;
