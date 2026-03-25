WITH DateSequence AS (
    SELECT CAST('2000-01-01' AS DATE) AS dt
    UNION ALL
    SELECT DATEADD(DAY, 1, dt)
    FROM DateSequence
    WHERE dt < '2030-12-31'
)

INSERT INTO DimDate
SELECT
    CONVERT(INT, FORMAT(dt, 'yyyyMMdd')),
    dt,
    DAY(dt),
    MONTH(dt),
    DATENAME(MONTH, dt),
    DATEPART(QUARTER, dt),
    YEAR(dt),
    DATENAME(WEEKDAY, dt),
    CASE 
        WHEN DATENAME(WEEKDAY, dt) IN ('Saturday', 'Sunday') THEN 1 
        ELSE 0 
    END
FROM DateSequence
OPTION (MAXRECURSION 0);

-- to handle any bad source data
INSERT INTO DimDate VALUES (-1, '1900-01-01', 0, 0, 'Unknown', 0, 0, 'Unknown', 0)