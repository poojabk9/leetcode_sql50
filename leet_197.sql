-- 197. Rising Temperature --

DROP TABLE weather

CREATE TABLE weather
(
    id INT,
    record_date date,
    temp INT
)

INSERT INTO weather VALUES
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30)

SELECT *
FROM weather

-- The below query are mine but they don't work because it doesn't compare dates --
SELECT *
FROM 
(
    SELECT *,
    LAG(temp) OVER(ORDER BY id) AS prev_temp
    FROM weather
) w
WHERE w.temp > w.prev_temp
        -- OR --
WITH CTE AS
(
    SELECT *,
    LAG(temp) OVER(ORDER BY record_date) AS prev_temp,
    LAG(temp) OVER(ORDER BY record_date) AS prev_date
    FROM weather
)
SELECT id 
FROM CTE
WHERE temp > prev_temp 


SELECT id, temp
FROM weather


-- DATEDIFF didn't work with 2 arguments -- 
SELECT w1.id, w1.temp, w2.id, w2.temp
FROM weather w1, weather w2
WHERE w1.temp > w2.temp AND DATEDIFF(w1.record_date, w2.record_date) = 1



