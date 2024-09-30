-- where condition values will vary as per theater & date
SELECT 
    M.title AS Movie_Title,
    M.language AS Language,
    M.rating AS Rating,
    M.format AS Format,
    S.date AS Show_Date,
    S.time AS Show_Time,
    CASE 
        WHEN S.availability THEN 'Available' 
        ELSE 'Sold Out' 
    END AS Availability
FROM 
    Shows S
JOIN 
    Movies M ON S.movie_id = M.movie_id
JOIN 
    Theatres T ON S.theatre_id = T.theatre_id
WHERE 
    S.date = '2024-09-28' AND 
    T.name = 'PVR: Growel, Kandivali (E)';