DECLARE
CURSOR c_students(p_major VARCHAR2) IS
  SELECT FIRST_NAME, LAST_NAME, CURRENT_CREDITS
  FROM STUDENTS
  WHERE MAJOR = p_major;
BEGIN
  FOR r_student IN c_students('Computer Science') LOOP
    dbms_output.put_line(r_student.FIRST_NAME|| ' ' || r_student.LAST_NAME|| ': ' || r_student.CURRENT_CREDITS);
  END LOOP;
END;
