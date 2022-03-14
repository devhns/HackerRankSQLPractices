SELECT CASE
    WHEN (A+B<=C) OR (B+C<=A) OR (A+C<=A)
    THEN 'Not A Triangle'
    WHEN (A=B) AND (B=C)
    THEN 'Equilateral'
    WHEN ((A=B AND A!=C)) OR ((A=C AND B!=C)) OR ((B=C AND A!=B))
    THEN 'Isosceles'
    WHEN (A!=B) AND (B!=C) AND (A!=C)
    THEN 'Scalene'
    END AS Triangle_Type
FROM TRIANGLES;

--Ýlk case whende üçgen olup olmadýklarýný kontrol etmek gerekiyor, cw sýradan gittiði
--için çýktýda hata olabilir