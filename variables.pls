CREATE OR REPLACE PROCEDURE Variables AS
  v_first_name students.FIRST_NAME%TYPE;
  r_scholarships scholarships%ROWTYPE;
BEGIN
  SELECT FIRST_NAME
    INTO v_first_name
  FROM students
  WHERE ID = 10000;
  dbms_output.put_line(v_first_name);

  SELECT *
    INTO r_scholarships
  FROM scholarships
  WHERE ID_STUDENT = 10000;
  dbms_output.put_line(r_scholarships.id_student||' '||r_scholarships.payment||' '||r_scholarships.creation_date);
END;
