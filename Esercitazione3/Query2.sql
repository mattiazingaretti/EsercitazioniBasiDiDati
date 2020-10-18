SELECT DISTINCT bar.nome, bar.indirizzo FROM
    bar LEFT JOIN serve on bar.nome=serve.bar
WHERE  birra IS NOT NULL AND prezzo>2