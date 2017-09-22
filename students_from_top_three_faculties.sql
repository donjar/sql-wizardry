WITH top_3_faculties AS (
  SELECT
    faculty
  FROM nus_students
  GROUP BY 1
  ORDER BY COUNT(*) DESC
  LIMIT 3
)

SELECT
  *
FROM nus_students
WHERE
  faculty IN (SELECT * FROM top_3_faculties);
