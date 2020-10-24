SELECT  distinct a.bevitore
from gradisce a join gradisce b
    on (a.bevitore = b.bevitore and a.birra='Amstel' and b.birra='Corona')


-- DEBUG SELECT * FROM gradisce