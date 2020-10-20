
SELECT  b2.nome ,b1.nome -- ,b2.indirizzo, b1.indirizzo
        FROM bevitore as b2 JOIN bevitore b1 ON b1.indirizzo=b2.indirizzo
        WHERE b1.indirizzo=b2.indirizzo AND b1.nome > b2.nome
