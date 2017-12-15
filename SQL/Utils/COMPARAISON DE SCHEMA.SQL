Le plus simple pour comparer les schémas et  d’utiliser les méta tables au final.

EXPLORT DES MODEL  DE LA DEV

SELECT  table_name, column_name, data_type, data_length  
FROM user_tab_cols WHERE table_name like  'SIGR_%'


CREATION DE LA TABLE SUR LA QUALIF
create table "dev_table" as SELECT  table_name, column_name, data_type, data_length  
FROM user_tab_cols WHERE table_name like  'SIGR_%';
delete from "dev_table" ;

	Import avec sql developper des données de la dev

COMPARAISON 

SELECT q.table_name, q.column_name, q.data_type, q.data_length  , d.data_type, d.data_length  
FROM user_tab_cols q, dev_table d
WHERE q.table_name = d.table_name and q.column_name=d.column_name and (q.data_type<> d.data_type or  q.data_length<> d.data_length)
order by q.table_name, q.column_name
