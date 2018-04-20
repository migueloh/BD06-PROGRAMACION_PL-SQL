/*
BASES DE DATOS -  MIGUEL OLMO HERNANDO
TAREAS A REALIZAR 2
*/

/*
1.  Lanzar el script de creación de tablas que tienes en ikas dentro de la carpeta Tareas_a_realizar?.
*/

-- LANZADO CORRECTAMENTE Y SIN ERRORES.

/*
2. Crea una tabla denominada ERRORES, que contendrá 3 columnas:
id, numérico de tres posiciones, autoincremental. Además esta columna identificará los elementos de la tabla.
numero, numérico de tres posiciones, que contendrá el código del empleado erróneo
descripcion varchar2(60)
*/

REM /*  ******** TABLA ERRORES: ************* */

DROP TABLE ERRORES CASCADE CONSTRAINTS; 

CREATE TABLE ERRORES (
  ID NUMBER(3) GENERATED  ALWAYS AS IDENTITY,
  NUMERO    NUMBER(4),
  DESCRIPCION VARCHAR2(60),
CONSTRAINT ERR_ID_PK PRIMARY KEY (ID)
 );


/*
3. Genera un procedimiento, llamado aumentar_salario,  al que se le pasen dos parámetros (un nº de empleado y el aumento del salario) que incremente el salario del empleado en cuestión, pero:
Si no existe el empleado, meter en la tabla de ERRORES, creada en el apartado anterior, el nº del empleado y el mensaje de no encontrado.
Si no tiene salario, meter en la tabla de errores el nº del empleado y el mensaje de salario nulo, y además visualizar ambos datos por pantalla.
*/

SELECT * FROM EMPLE;
DESC EMPLE

CREATE OR REPLACE PROCEDURE AUMENTAR_SALARIO AS
  CURSOR C_EMP IS SELECT EMP_NO, NVL(TO_CHAR(SALARIO)) FROM EMPLE;
    V_EMP_SAL EMPLE.SALARIO%TYPE;
    V_EMP_NO EMPLE.EMP_NO%TYPE;
BEGIN 
OPEN C_EMP;
  FETCH C_EMP INTO V_EMP_SAL, C_EMP_NO;
    WHILE C_EMP%FOUND LOOP
      CASE 
        WHEN OPCION
      END CASE;
  FETCH C_EMP INTO V_EMP_SAL, C_EMP_NO;
  EXIT WHEN C_TRAB%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(MOSTRAR EL ERROR);
  END LOOP;
CLOSE C_EMP;
END AUMENTAR_SALARIO;
        
        -- NO ME HA DADO TIEMPO
    

-- PARA MOSTRAR LOS ERRORES SI COMPILA CON ERRORES
SHOW ERRORS PROCEDURE VER_EMPLE_DEPART_WHILE;

/*4.  Realiza los siguientes pasos para ejecutar tu procedimiento:
Select * from emple;

EXECUTE aumentar_salario(7839,100);
Select * from errores;
Select * from emple
where EMP_NO=7839;

EXECUTE aumentar_salario(2222,1);
Select * from errores;

EXECUTE aumentar_salario(1111,100);
Select * from errores;

EXECUTE aumentar_salario(6666,100);
Select * from errores;

EXECUTE aumentar_salario(7934,100);
Select * from errores;
Select * from emple
where EMP_NO=7934;
*/

EXECUTE aumentar_salario(7839,100);
Select * from errores;
Select * from emple
where EMP_NO=7839;

EXECUTE aumentar_salario(2222,1);
Select * from errores;

EXECUTE aumentar_salario(1111,100);
Select * from errores;

EXECUTE aumentar_salario(6666,100);
Select * from errores;

EXECUTE aumentar_salario(7934,100);
Select * from errores;
Select * from emple
where EMP_NO=7934;