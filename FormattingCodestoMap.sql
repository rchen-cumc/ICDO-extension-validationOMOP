/****** Script for SelectTopNRows command from SSMS  ******/
SELECT distinct (SUBSTRING([MORPHTYPE_BEHAVICDO3],1,4) + '/' + SUBSTRING([MORPHTYPE_BEHAVICDO3],5,1) + '-' + SUBSTRING([PRIMARYSITE],1,3) + '.' + SUBSTRING([PRIMARYSITE],4,1)) as FullCode, MORPHTYPE_BEHAVICDO3, PRIMARYSITE
  FROM [staging].[rc3179].[cancer_registry_str]