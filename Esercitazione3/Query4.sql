SELECT bevitore.nome, b1.nome -- , bevitore.indirizzo -- DEBUG: uncomment
    FROM bevitore left join bevitore b1 on bevitore.indirizzo=b1.indirizzo
WHERE bevitore.indirizzo=b1.indirizzo AND bevitore.nome!=b1.nome;
