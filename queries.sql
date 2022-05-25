SELECT pst_time, MOD(pst_time + 15, 24) AS dong_8_qiong_qu_time, count
FROM (
  SELECT EXTRACT(HOUR FROM TO_TIMESTAMP(created_utc)) AS pst_time,
         COUNT(*) AS count
  FROM dfs.`/tmp/user_comment.json`
  GROUP BY 1
) t
ORDER BY 2;


Results:
+----------+----------------------+-------+
| pst_time | dong_8_qiong_qu_time | count |
+----------+----------------------+-------+
| 9        | 0                    | 82    |
| 10       | 1                    | 31    |
| 11       | 2                    | 33    |
| 12       | 3                    | 68    |
| 13       | 4                    | 38    |
| 14       | 5                    | 27    |
| 15       | 6                    | 60    |
| 16       | 7                    | 40    |
| 17       | 8                    | 101   |
| 18       | 9                    | 133   |
| 19       | 10                   | 144   |
| 20       | 11                   | 101   |
| 21       | 12                   | 114   |
| 22       | 13                   | 150   |
| 23       | 14                   | 100   |
| 0        | 15                   | 96    |
| 1        | 16                   | 77    |
| 2        | 17                   | 120   |
| 3        | 18                   | 96    |
| 4        | 19                   | 76    |
| 5        | 20                   | 102   |
| 6        | 21                   | 111   |
| 7        | 22                   | 126   |
| 8        | 23                   | 83    |
+----------+----------------------+-------+
