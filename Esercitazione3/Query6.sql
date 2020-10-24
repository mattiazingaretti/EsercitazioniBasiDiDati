

SELECT distinct b1.bevitore
from frequenta b1 join frequenta b2
    ON (b1.bevitore= b2.bevitore
            and  b1.bar != b2.bar and b1.bar < b2.bar)

-- DEBUG Select * from frequenta