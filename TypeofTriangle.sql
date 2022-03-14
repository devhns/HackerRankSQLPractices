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

--�lk case whende ��gen olup olmad�klar�n� kontrol etmek gerekiyor, cw s�radan gitti�i
--i�in ��kt�da hata olabilir