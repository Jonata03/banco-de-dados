SELECT NOME FROM FUN ;
SELECT substr(e.NOME,iter.POSICAO,1)AS C FROM (SELECT NOME FROM FUN WHERE NOME = 'Bruno') e, (SELECT id AS POSICAO FROM TABELA10) iter WHERE iter.POSICAO  <= LENGTH(e.NOME);

SELECT NOME, iter.POSICAO FROM (SELECT NOME FROM FUN WHERE NOME = 'Bruno') e, (SELECT id AS POSICAO FROM TABELA10) iter WHERE iter.POSICAO  <= length(e.NOME);

-- REMOCAO DE VIRGULAS DE STRINGS

SELECT (LENGTH('TESTE1,TESTE2,TESTE3')- LENGTH(REPLACE( 'TESTE1,TESTE2,TESTE3',',','')))/LENGTH(',') AS Virgula from FUN;

select  FUN.NOME, replace( replace(replace(replace(replace(NOME, 'A',''),'E',''),'I',''),'O',''),'U','') as resultado1, FUN.SALARIO,replace(FUN.SALARIO,0,'') resultado from FUN;

select NUMERO_DEPARTAMENTO, group_concat(NOME order by ID separator ',') from FUN group by NUMERO_DEPARTAMENTO