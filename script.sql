 CREATE CLASS Person EXTENDS V

 CREATE CLASS Car EXTENDS V

 CREATE CLASS Owns EXTENDS E

 CREATE VERTEX Person SET name = 'Luca'


 CREATE VERTEX Car SET name = 'Ferrari Modena'


 CREATE EDGE Owns FROM ( SELECT FROM Person ) TO ( SELECT FROM Car )

 SELECT name FROM ( SELECT EXPAND( OUT('Owns') ) FROM Person
          WHERE name='Luca' )


 CREATE CLASS Country EXTENDS V

 CREATE CLASS Lives EXTENDS E

 CREATE VERTEX Country SET name='UK'


 CREATE EDGE Lives FROM ( SELECT FROM Person ) TO ( SELECT FROM Country )

 SELECT name FROM ( SELECT EXPAND( IN('Owns').OUT('Lives') )
          FROM Car WHERE name LIKE '%Ferrari%' )


