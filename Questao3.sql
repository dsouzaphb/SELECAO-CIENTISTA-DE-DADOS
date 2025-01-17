SELECT DISTINCT
    AF.MUNIC�PIO,
    COUNT(AF.IDATRACACAO) AS 'N�MERO DE ATRACA��ES',
    AVG(DATEDIFF(HOUR,AF.DATA IN�CIO OPERA��O,AF.DATA T�RMINO OPERA��O) AS 'TEMPO DE ESPERA M�DIO',
    AVG(DATEDIFF(HOUR,AF.DATA ATRACA��O,AF.DATA DESATRACA��O), 
    AF.MES,
    AF.ANO

FROM
    ATRACAO_FATO AS AF
    LEFT JOIN CARGA_FATO AS CF ON CF.IDATRACACAO = AF.IDATRACACAO

WHERE AF.UF = 'CEAR�' AND AF.REGI�O GEOGR�FICA = 'NORDESTE'

GROUP BY AF.MUNIC�PIO, AF.MES, AF.ANO
