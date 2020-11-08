
-- Mia soluzione
Select bev.nome 
from (frequenta frec join bevitore bev on frec.bevitore=bev.nome ) 
join bar ON (bar.nome= frec.bar and bar.indirizzo  != bev.indirizzo  )
group by bev.nome 
having SUM(frec.volte_a_settimana)  > 4


-- Soluzione del prof 
-- Malinteso sull'interpretazione della query
SELECT bevitore.nome
FROM bevitore JOIN frequenta ON bevitore.nome = frequenta.bevitore
JOIN bar ON frequenta.bar = bar.nome
WHERE bevitore.indirizzo != bar.indirizzo AND
volte_a_settimana > 5
