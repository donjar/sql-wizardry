SELECT * FROM crosstab(
  'SELECT uid, prob_id, score FROM contest_scores ORDER BY 1',
  'SELECT DISTINCT prob_id FROM contest_scores ORDER BY 1'
) AS ("uid" int, "prob1" int, "prob2" int, "prob3" int);
