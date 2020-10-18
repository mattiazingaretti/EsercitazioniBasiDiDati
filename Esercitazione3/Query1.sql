SELECT bevitore FROM gradisce
 WHERE  birra='Amstel' OR birra='Corona'
GROUP BY bevitore; -- Alternativamente si poteva usare keyword DISTINCT dopo SELECT