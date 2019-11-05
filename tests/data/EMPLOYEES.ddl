create table EMPLOYEES
(
	EMPLOYEE_ID int,
	FIRST_NAME TEXT,
	LAST_NAME TEXT,
	EMAIL TEXT,
	PHONE_NUMBER TEXT,
	HIRE_DATE TEXT,
	JOB_ID TEXT,
	SALARY real,
	COMMISSION_PCT real,
	MANAGER_ID int
);

INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (100, 'Steven', 'King', 'SKING', '515.123.4567', '17/06/03 00:00:00', 'AD_PRES', 24000, null, null);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '21/09/05 00:00:00', 'AD_VP', 17000, null, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '13/01/01 00:00:00', 'AD_VP', 17000, null, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '03/01/06 00:00:00', 'IT_PROG', 9000, null, 102);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '21/05/07 00:00:00', 'IT_PROG', 6000, null, 103);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', '25/06/05 00:00:00', 'IT_PROG', 4800, null, 103);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '05/02/06 00:00:00', 'IT_PROG', 4800, null, 103);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '07/02/07 00:00:00', 'IT_PROG', 4200, null, 103);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '17/08/02 00:00:00', 'FI_MGR', 12008, null, 101);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '16/08/02 00:00:00', 'FI_ACCOUNT', 9000, null, 108);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (110, 'John', 'Chen', 'JCHEN', '515.124.4269', '28/09/05 00:00:00', 'FI_ACCOUNT', 8200, null, 108);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '30/09/05 00:00:00', 'FI_ACCOUNT', 7700, null, 108);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '07/03/06 00:00:00', 'FI_ACCOUNT', 7800, null, 108);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', '07/12/07 00:00:00', 'FI_ACCOUNT', 6900, null, 108);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '07/12/02 00:00:00', 'PU_MAN', 11000, null, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '18/05/03 00:00:00', 'PU_CLERK', 3100, null, 114);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '24/12/05 00:00:00', 'PU_CLERK', 2900, null, 114);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '24/07/05 00:00:00', 'PU_CLERK', 2800, null, 114);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '15/11/06 00:00:00', 'PU_CLERK', 2600, null, 114);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '10/08/07 00:00:00', 'PU_CLERK', 2500, null, 114);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '18/07/04 00:00:00', 'ST_MAN', 8000, null, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '10/04/05 00:00:00', 'ST_MAN', 8200, null, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '01/05/03 00:00:00', 'ST_MAN', 7900, null, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '10/10/05 00:00:00', 'ST_MAN', 6500, null, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '16/11/07 00:00:00', 'ST_MAN', 5800, null, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '16/07/05 00:00:00', 'ST_CLERK', 3200, null, 120);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '28/09/06 00:00:00', 'ST_CLERK', 2700, null, 120);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (127, 'James', 'Landry', 'JLANDRY', '650.124.1334', '14/01/07 00:00:00', 'ST_CLERK', 2400, null, 120);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '08/03/08 00:00:00', 'ST_CLERK', 2200, null, 120);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '20/08/05 00:00:00', 'ST_CLERK', 3300, null, 121);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', '30/10/05 00:00:00', 'ST_CLERK', 2800, null, 121);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '16/02/05 00:00:00', 'ST_CLERK', 2500, null, 121);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (132, 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '10/04/07 00:00:00', 'ST_CLERK', 2100, null, 121);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '14/06/04 00:00:00', 'ST_CLERK', 3300, null, 122);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834', '26/08/06 00:00:00', 'ST_CLERK', 2900, null, 122);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (135, 'Ki', 'Gee', 'KGEE', '650.127.1734', '12/12/07 00:00:00', 'ST_CLERK', 2400, null, 122);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (136, 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '06/02/08 00:00:00', 'ST_CLERK', 2200, null, 122);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (137, 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', '14/07/03 00:00:00', 'ST_CLERK', 3600, null, 123);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '26/10/05 00:00:00', 'ST_CLERK', 3200, null, 123);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (139, 'John', 'Seo', 'JSEO', '650.121.2019', '12/02/06 00:00:00', 'ST_CLERK', 2700, null, 123);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834', '06/04/06 00:00:00', 'ST_CLERK', 2500, null, 123);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '17/10/03 00:00:00', 'ST_CLERK', 3500, null, 124);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '29/01/05 00:00:00', 'ST_CLERK', 3100, null, 124);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', '15/03/06 00:00:00', 'ST_CLERK', 2600, null, 124);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '09/07/06 00:00:00', 'ST_CLERK', 2500, null, 124);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '01/10/04 00:00:00', 'SA_MAN', 14000, 0.4, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (146, 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '05/01/05 00:00:00', 'SA_MAN', 13500, 0.3, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (147, 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '10/03/05 00:00:00', 'SA_MAN', 12000, 0.3, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '15/10/07 00:00:00', 'SA_MAN', 11000, 0.3, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '29/01/08 00:00:00', 'SA_MAN', 10500, 0.2, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (150, 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '30/01/05 00:00:00', 'SA_REP', 10000, 0.3, 145);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (151, 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '24/03/05 00:00:00', 'SA_REP', 9500, 0.25, 145);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (152, 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '20/08/05 00:00:00', 'SA_REP', 9000, 0.25, 145);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (153, 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '30/03/06 00:00:00', 'SA_REP', 8000, 0.2, 145);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (154, 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '09/12/06 00:00:00', 'SA_REP', 7500, 0.2, 145);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (155, 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '23/11/07 00:00:00', 'SA_REP', 7000, 0.15, 145);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (156, 'Janette', 'King', 'JKING', '011.44.1345.429268', '30/01/04 00:00:00', 'SA_REP', 10000, 0.35, 146);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (157, 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '04/03/04 00:00:00', 'SA_REP', 9500, 0.35, 146);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (158, 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '01/08/04 00:00:00', 'SA_REP', 9000, 0.35, 146);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '10/03/05 00:00:00', 'SA_REP', 8000, 0.3, 146);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (160, 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '15/12/05 00:00:00', 'SA_REP', 7500, 0.3, 146);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (161, 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', '03/11/06 00:00:00', 'SA_REP', 7000, 0.25, 146);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (162, 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', '11/11/05 00:00:00', 'SA_REP', 10500, 0.25, 147);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (163, 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', '19/03/07 00:00:00', 'SA_REP', 9500, 0.15, 147);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '24/01/08 00:00:00', 'SA_REP', 7200, 0.1, 147);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (165, 'David', 'Lee', 'DLEE', '011.44.1346.529268', '23/02/08 00:00:00', 'SA_REP', 6800, 0.1, 147);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '24/03/08 00:00:00', 'SA_REP', 6400, 0.1, 147);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '21/04/08 00:00:00', 'SA_REP', 6200, 0.1, 147);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '11/03/05 00:00:00', 'SA_REP', 11500, 0.25, 148);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '23/03/06 00:00:00', 'SA_REP', 10000, 0.2, 148);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '24/01/06 00:00:00', 'SA_REP', 9600, 0.2, 148);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '23/02/07 00:00:00', 'SA_REP', 7400, 0.15, 148);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '24/03/07 00:00:00', 'SA_REP', 7300, 0.15, 148);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '21/04/08 00:00:00', 'SA_REP', 6100, 0.1, 148);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '11/05/04 00:00:00', 'SA_REP', 11000, 0.3, 149);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '19/03/05 00:00:00', 'SA_REP', 8800, 0.25, 149);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '24/03/06 00:00:00', 'SA_REP', 8600, 0.2, 149);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '23/04/06 00:00:00', 'SA_REP', 8400, 0.2, 149);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '24/05/07 00:00:00', 'SA_REP', 7000, 0.15, 149);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', '04/01/08 00:00:00', 'SA_REP', 6200, 0.1, 149);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', '24/01/06 00:00:00', 'SH_CLERK', 3200, null, 120);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '23/02/06 00:00:00', 'SH_CLERK', 3100, null, 120);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '21/06/07 00:00:00', 'SH_CLERK', 2500, null, 120);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '03/02/08 00:00:00', 'SH_CLERK', 2800, null, 120);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '27/01/04 00:00:00', 'SH_CLERK', 4200, null, 121);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', '20/02/05 00:00:00', 'SH_CLERK', 4100, null, 121);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '24/06/06 00:00:00', 'SH_CLERK', 3400, null, 121);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '07/02/07 00:00:00', 'SH_CLERK', 3000, null, 121);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '14/06/05 00:00:00', 'SH_CLERK', 3800, null, 122);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '13/08/05 00:00:00', 'SH_CLERK', 3600, null, 122);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', '11/07/06 00:00:00', 'SH_CLERK', 2900, null, 122);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '19/12/07 00:00:00', 'SH_CLERK', 2500, null, 122);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', '04/02/04 00:00:00', 'SH_CLERK', 4000, null, 123);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '03/03/05 00:00:00', 'SH_CLERK', 3900, null, 123);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '01/07/06 00:00:00', 'SH_CLERK', 3200, null, 123);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (195, 'Vance', 'Jones', 'VJONES', '650.501.4876', '17/03/07 00:00:00', 'SH_CLERK', 2800, null, 123);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '24/04/06 00:00:00', 'SH_CLERK', 3100, null, 124);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '23/05/06 00:00:00', 'SH_CLERK', 3000, null, 124);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '21/06/07 00:00:00', 'SH_CLERK', 2600, null, 124);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '13/01/08 00:00:00', 'SH_CLERK', 2600, null, 124);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '17/09/03 00:00:00', 'AD_ASST', 4400, null, 101);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '17/02/04 00:00:00', 'MK_MAN', 13000, null, 100);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (202, 'Pat', 'Fay', 'PFAY', '603.123.6666', '17/08/05 00:00:00', 'MK_REP', 6000, null, 201);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '07/06/02 00:00:00', 'HR_REP', 6500, null, 101);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', '07/06/02 00:00:00', 'PR_REP', 10000, null, 101);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '07/06/02 00:00:00', 'AC_MGR', 12008, null, 101);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID) VALUES (206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', '07/06/02 00:00:00', 'AC_ACCOUNT', 8300, null, 205);