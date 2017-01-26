CREATE OR REPLACE PROCEDURE Condiciones(p_monto IN NUMBER) AS
BEGIN
  IF p_monto >= 5000 THEN
    dbms_output.put_line('Bonus de $100');
  ELSIF p_monto > 1000 THEN
    dbms_output.put_line('Has ganado tiempo aire');
  ELSE
    dbms_output.put_line('Gracias por su compra');
  END IF;

  --Lista de elementos
  IF p_monto IN (1000, 5000) THEN
    dbms_output.put_line('Verdadero');
  ELSE
    dbms_output.put_line('Falso');
  END IF;
END;
