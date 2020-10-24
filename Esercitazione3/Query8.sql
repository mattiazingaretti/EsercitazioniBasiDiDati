Select *
from (frequenta frec join bevitore bev on frec.bevitore=bev.nome ) join bar ON (bar.nome= frec.bar)
-- where a.volte_a_settimana >= 5 -- and c.indirizzo != b.indirizzo