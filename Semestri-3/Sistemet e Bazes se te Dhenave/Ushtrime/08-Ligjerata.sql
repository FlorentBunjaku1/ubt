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
             'N�nt�', 
             9) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S100', 
             'CAO', 
             'Shtat�', 
             7) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S102', 
             'CN', 
             'Tet�', 
             8) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S103', 
             'DBS', 
             'N�nt�', 
             9) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S106', 
             'DBS', 
             'Tet�', 
             8) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S108', 
             'CS2', 
             'Tet�', 
             8) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S100', 
             'CS2', 
             'Dhjet�', 
             10) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S101', 
             'CN', 
             'Gjasht�', 
             6) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S100', 
             'CN', 
             'N�nt�', 
             9) 

INSERT INTO vlersimi 
            (studenti, 
             lenda, 
             emertimi, 
             nota) 
VALUES      ('S107', 
             'DBS', 
             'Dhjet�', 
             10); 



------------------------------------------------

/*N� raportin tuaj t� shfaqeni t� gjith� studentet q� kan� kaluar l�nd�t p�rkatse. N� k�t� raport t�
shaqet emri, mbiemri, l�nd�n dhe not�n p�r secilin student.*/
Select s.emri, s.mbiemri, l.emertimi, v.nota
From Studenti s JOIN vlersimi v ON s.student_id = v.studenti JOIN lenda l ON l.kodi_l = v.lenda
Order by v.nota DESC

/*N� raportin tuaj t� shfaqeni t� gjithe studentet q� nuk kan� kaluar ndonj� l�nd�.N� k�t� raport t�
shfaqet emri, mbiemri, l�nda dhe nota p�r t� e verifikuar secilin student.*/
Select s.emri, s.mbiemri, l.emertimi, v.nota
From Studenti s left JOIN vlersimi v ON s.student_id = v.studenti left JOIN lenda l ON l.kodi_l = v.lenda
Where l.kodi_l is null
Order by s.emri

/*N� raportin tuaj t� shfaqeni L�nd�t, ku nuk ka kaluar ndonj� student. N� k�t� raport t� shaqet
l�nda, dhe ECTS p�r t� e verifikuar secilin L�nd�.*/
Select s.emri, s.mbiemri,l.emertimi, l.ects
From studenti s right join vlersimi v ON s.student_id = v.studenti right join lenda l ON l.kodi_l = v.lenda
Where s.student_id is null

/*N� raportin tuaj t� verifikon cilit student nuk ka kaluar ndonj� l�nd, po ashtu n� t� nj�jton raport t�
shfaqeni L�nd�t n� t� cilat kalushmeria ka qen� zero. N� raport t� shaqet emrin, mbiemrin e studentit dhe
l�nda, dhe ECTS.*/
Select s.emri, s.mbiemri, l.emertimi, l.ects
From studenti s Full Join vlersimi v ON s.student_id = v.studenti FULL Join lenda l ON l.kodi_l = v.lenda
Where v.lenda is null


/*Listo Studentet e qytetit PR , duke shfaqur lendet te cilat e kan kaluar me sukses, duke paraqitur noten e secilit*/
Select *
From studenti s join vlersimi v on v.studenti = s.student_id Join lenda l ON l.kodi_l = v.lenda
Where s.qyteti = 'PR' AND v.nota > 5
