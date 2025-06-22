Deliverable 3: SQL Database & Optimized Queries
The script above creates the nhs_data.db file. Here are the optimized queries you would run against it for reporting.
File: optimized_queries.sql
Generated sql
-- Query 1: Get the average waiting time and satisfaction score per hospital trust.
-- This is an optimized reporting query because it pre-aggregates the data.
SELECT
    ORG_NAME,
    AVG("PATIENT_SATISFACTION_SCORE") AS "Average Satisfaction",
    AVG("TOTAL_TIME_MEDIAN_ADMITTED") AS "Average Wait Time (mins)"
FROM
    quality_and_attendance
GROUP BY
    ORG_NAME
ORDER BY
    "Average Wait Time (mins)" DESC;


-- Query 2: Find the top 10 busiest months based on yearly attendance context.
-- This helps identify periods of high pressure.
SELECT
    strftime('%Y-%m', Month) AS "Attendance Month",
    "Total Attendances"
FROM
    quality_and_attendance
GROUP BY
    "Attendance Month"
ORDER BY
    "Total Attendances" DESC
LIMIT 10;


-- Query 3: Calculate the correlation between initial assessment time and total time in A&E.
-- This query prepares data for a specific statistical analysis.
SELECT
    "TIME_TO_INITIAL_ASSESSMENT_MEDIAN" AS "Time to Assessment",
    "TOTAL_TIME_MEDIAN_ADMITTED" AS "Total Time in A&E"
FROM
    quality_and_attendance
WHERE
    "Time to Assessment" IS NOT NULL
    AND "Total Time in A&E" IS NOT NULL;
