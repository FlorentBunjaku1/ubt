CREATE DATABASE ligj08 

USE ligj08 

CREATE TABLE studenti 
  ( 
     student_id CHAR(5), 
     emri       VARCHAR (20), 
     mbiemri    VARCHAR (20), 
     gjinia     CHAR(1), 
     qyteti     VARCHAR (10), 
     PRIMARY KEY (student_id), 
     CHECK (gjinia IN ('M', 'F', 'N')) 
  ); 

  INSERT INTO studenti 
VALUES      ('S100', 
             'Liberta', 
             'Buja', 
             'F', 
             'PZ'); 

INSERT INTO studenti 
VALUES      ('S101', 
             'Berat', 
             'Gashi', 
             'M', 
             'FR'); 

INSERT INTO studenti 
VALUES      ('S102', 
             'Edita', 
             'Syla', 
             'F', 
             'PZ') 

INSERT INTO studenti 
VALUES      ('S103', 
             'Visar', 
             'Dema', 
             'M', 
             'GJK') 

INSERT INTO studenti 
VALUES      ('S104', 
             'Kushtrim', 
             'Hoxha', 
             'M', 
             'PR') 

INSERT INTO studenti 
VALUES      ('S105', 
             'Agnesa', 
             'Peci', 
             'F', 
             'PR') 

INSERT INTO studenti 
VALUES      ('S106', 
             'Kushtrim', 
             'Hoxha', 
             'M', 
             'PR') 

INSERT INTO studenti 
VALUES      ('S107', 
             'Lenonora', 
             'Peci', 
             'F', 
             'PR') 

INSERT INTO studenti 
VALUES      ('S108', 
             'Besiana', 
             'Shkembi', 
             'F', 
             'PR') 

INSERT INTO studenti 
VALUES      ('S109', 
             'Veton', 
             'Sopa', 
             'M', 
             'PZ') 

INSERT INTO studenti 
VALUES      ('S110', 
             'Alketa', 
             'Jakupi', 
             'F', 
             'FR') 

CREATE TABLE lenda 
  ( 
     kodi_l   CHAR(5) PRIMARY KEY, 
     emertimi VARCHAR (40), 
     ects     NUMERIC 
  );

  INSERT INTO lenda 
VALUES      ('DBS', 
             'Sistemi i Bazave te te Dhenave', 
             '6') 

INSERT INTO lenda 
VALUES      ('CS2', 
             'Shkenca Kompjuterike 2 (POO)', 
             '7') 

INSERT INTO lenda 
VALUES      ('DSA', 
             'Alogoritme dhe Struktura e te Dhenave', 
             '4') 

INSERT INTO lenda 
VALUES      ('CAO', 
             'Arkitektura Kompjuterike dhe Organizimi', 
             '5') 

INSERT INTO lenda 
VALUES      ('SD', 
             'Strukutura Diskrete 1', 
             '5') 

INSERT INTO lenda 
VALUES      ('CN', 
             'Rrjetat Kompjuterike', 
             '5') 



CREATE TABLE vlersimi 
  ( 
     nota     INT, 
     emertimi VARCHAR(10), 
     studenti CHAR(5), 
     lenda    CHAR(5), 
     FOREIGN KEY (studenti) REFERENCES studenti(student_id) ON UPDATE CASCADE ON 
     DELETE SET NULL, 
     FOREIGN KEY (lenda) REFERENCES lenda(kodi_l) ON UPDATE CASCADE ON DELETE 
     SET NULL 
  ); 

  INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S102', 
             'CAO', 
             'Nëntë', 
             9) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S100', 
             'CAO', 
             'Shtatë', 
             7) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S102', 
             'CN', 
             'Tetë', 
             8) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S103', 
             'DBS', 
             'Nëntë', 
             9) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S106', 
             'DBS', 
             'Tetë', 
             8) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S108', 
             'CS2', 
             'Tetë', 
             8) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S100', 
             'CS2', 
             'Dhjetë', 
             10) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S101', 
             'CN', 
             'Gjashtë', 
             6) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S100', 
             'CN', 
             'Nëntë', 
             9) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S107', 
             'DBS', 
             'Dhjetë', 
             10); 



------------------------------------------------

/*Në raportin tuaj të shfaqeni të gjithë studentet që kanë kaluar lëndët përkatse. Në këtë raport të
shaqet emri, mbiemri, lëndën dhe notën për secilin student.*/
Select s.emri, s.mbiemri, l.emertimi, v.nota
From Studenti s JOIN vlersimi v ON s.student_id = v.studenti JOIN lenda l ON l.kodi_l = v.lenda
Order by v.nota DESC

/*Në raportin tuaj të shfaqeni të gjithe studentet që nuk kanë kaluar ndonjë lëndë.Në këtë raport të
shfaqet emri, mbiemri, lënda dhe nota për të e verifikuar secilin student.*/
Select s.emri, s.mbiemri, l.emertimi, v.nota
From Studenti s left JOIN vlersimi v ON s.student_id = v.studenti left JOIN lenda l ON l.kodi_l = v.lenda
Where l.kodi_l is null
Order by s.emri

/*Në raportin tuaj të shfaqeni Lëndët, ku nuk ka kaluar ndonjë student. Në këtë raport të shaqet
lënda, dhe ECTS për të e verifikuar secilin Lëndë.*/
Select s.emri, s.mbiemri,l.emertimi, l.ects
From studenti s right join vlersimi v ON s.student_id = v.studenti right join lenda l ON l.kodi_l = v.lenda
Where s.student_id is null

/*Në raportin tuaj të verifikon cilit student nuk ka kaluar ndonjë lënd, po ashtu në të njëjton raport të
shfaqeni Lëndët në të cilat kalushmeria ka qenë zero. Në raport të shaqet emrin, mbiemrin e studentit dhe
lënda, dhe ECTS.*/
Select s.emri, s.mbiemri, l.emertimi, l.ects
From studenti s Full Join vlersimi v ON s.student_id = v.studenti FULL Join lenda l ON l.kodi_l = v.lenda
Where v.lenda is null


/*Listo Studentet e qytetit PR , duke shfaqur lendet te cilat e kan kaluar me sukses, duke paraqitur noten e secilit*/
Select *
From studenti s join vlersimi v on v.studenti = s.student_id Join lenda l ON l.kodi_l = v.lenda
Where s.qyteti = 'PR' AND v.nota > 5
