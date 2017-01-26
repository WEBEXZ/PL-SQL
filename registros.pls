CREATE OR REPLACE PROCEDURE Registros AS
  TYPE scholarships_type IS RECORD(
    first_name students.FIRST_NAME%TYPE,
    id_student scholarships.ID_STUDENT%TYPE,
    payment scholarships.PAYMENT%TYPE,
    creation_date scholarships.CREATION_DATE%TYPE
  );
  r_scholarships scholarships_type;
BEGIN
  SELECT FIRST_NAME, ID_STUDENT, PAYMENT, CREATION_DATE
    INTO r_scholarships
  FROM students, scholarships
  WHERE ID_STUDENT = id AND ID_STUDENT = 10000;
  dbms_output.put_line(r_scholarships.first_name||' '||r_scholarships.id_student||' '||r_scholarships.payment||' '||r_scholarships.creation_date);
END;
