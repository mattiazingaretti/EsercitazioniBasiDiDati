SELECT DISTINCT bevitore.nome, bevitore.indirizzo FROM
    bevitore LEFT JOIN frequenta ON frequenta.bevitore=bevitore.nome
             LEFT JOIN serve ON serve.bar=frequenta.bar
    WHERE frequenta.bar IS NOT NULL AND serve.birra='Peroni'