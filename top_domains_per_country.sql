WITH domains_count AS (
  SELECT
    domain,
    country,
    COUNT(*) AS count
  FROM login_data
  GROUP BY 1, 2
), domains_ranked AS (
  SELECT
    domain,
    country,
    rank() OVER (PARTITION BY country ORDER BY count DESC) AS rank
  FROM domains_count
)

SELECT
  domain,
  country,
  rank
FROM domains_ranked
WHERE rank <= 3;
