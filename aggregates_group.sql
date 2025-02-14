use test_db;

CREATE TABLE student_scores
(
    id         SERIAL PRIMARY KEY,
    student_id INT         NOT NULL,
    course     VARCHAR(50) NOT NULL,
    score      INT         NOT NULL
);

INSERT INTO student_scores (id, student_id, course, score)
VALUES (1, 1, 'Algebra', 19),
       (2, 1, 'Math', 18),
       (3, 2, 'Python', 20),
       (4, 1, 'Python', 19),
       (5, 3, 'Math', 16),
       (6, 2, 'Math', 15);

select max(score) from student_scores;
select min(score) from student_scores;
select sum(score) from student_scores;
select avg(score) from student_scores;

select count(score) from student_scores;
select count(*) from student_scores;
select group_concat(name) from users;

select student_id, round(avg(score)) AS average from student_scores
group by student_id
having avg(score) > 17;

SELECT DISTINCT student_id FROM student_scores;
# ==
SELECT student_id FROM student_scores GROUP BY student_id;