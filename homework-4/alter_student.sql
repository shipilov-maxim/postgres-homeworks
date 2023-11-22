-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE student
(
	student_id serial,
	first_name varchar,
	last_name varchar,
	birthday date,
	phone varchar
)

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE student ADD COLUMN middle_name varchar


-- 3. Удалить колонку middle_name
ALTER TABLE student DROP COLUMN middle_name


-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE student RENAME COLUMN birthday TO birth_date


-- 5. Изменить тип данных колонки phone на varchar(32)
ALTER TABLE student ALTER COLUMN phone SET DATA TYPE varchar(32)


-- 6. Вставить три любых записи с автогенерацией идентификатора
INSERT INTO student (first_name, last_name,	birth_date, phone)
VALUES ('Иван', 'Иванов', '1990-10-10', '+7(999)888-11-44'),
('Петр', 'Денисов', '2000-05-05', '+7(999)222-88-11'),
('Денис', 'Петров', '1969-01-23', '+7(999)228-14-88')

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE student RESTART IDENTITY;