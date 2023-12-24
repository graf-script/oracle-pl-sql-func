SELECT * FROM departments;
SELECT e.first_name, e.last_name, get_depar_title(department_id) department_name FROM employees e;
/
CREATE FUNCTION get_depar_title(p_depar_id IN NUMBER) RETURN VARCHAR2 IS
    v_depar_title VARCHAR2(100);
BEGIN

    SELECT d.department_name
    INTO v_depar_title
    FROM departments d
    WHERE d.department_id = p_depar_id;
    
    RETURN v_depar_title;
    
END get_depar_title;
/

SELECT get_depar_title(40) department_title FROM dual;

DROP FUNCTION get_depar_title;
