--GROUP BY

--1. Contare quanti iscritti ci sono stati ogni anno.

SELECT COUNT(`id`), YEAR(`enrolment_date`) AS `enrolment_year`
FROM `students`
GROUP BY `enrolment_year`;

--2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio.

SELECT COUNT(`id`), `office_address`
FROM `teachers`
GROUP BY `office_address`;

--3. Calcolare la media dei voti di ogni appello d'esame.

SELECT `exam_id`, AVG(`vote`)
FROM `exam_student`
GROUP BY `exam_id`;

--4. Contare quanti corsi di laurea ci sono per ogni dipartimento.

SELECT COUNT(`id`), `department_id`
FROM `degrees`
GROUP BY `department_id`;

--JOIN
--1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
--2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di
--Neuroscienze
--3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
--4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui
--sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e
--nome
--5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
--6. Selezionare tutti i docenti che insegnano nel Dipartimento di
--Matematica (54)
--7. BONUS: Selezionare per ogni studente il numero di tentativi sostenuti
--per ogni esame, stampando anche il voto massimo. Successivamente,
--filtrare i tentativi con voto minimo 18.