use staging

SELECT reg.*, c.*
  FROM (SELECT distinct (SUBSTRING([MORPHTYPE_BEHAVICDO3],1,4) + '/' + SUBSTRING([MORPHTYPE_BEHAVICDO3],5,1) + '-' + SUBSTRING([PRIMARYSITE],1,3) + '.' + SUBSTRING([PRIMARYSITE],4,1)) as FullCode, MORPHTYPE_BEHAVICDO3, PRIMARYSITE, HISTOLOGICTYPEICDO3
  FROM [rc3179].[cancer_registry_str]) reg
join [staging].[dbo].[rc3179.CONCEPT] c
  on reg.FullCode=c.concept_code
  --where c.concept_code is NULL