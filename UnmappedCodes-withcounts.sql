use staging

SELECT count (FullCode) as 'Count', FullCode
  FROM (SELECT (SUBSTRING([MORPHTYPE_BEHAVICDO3],1,4) + '/' + SUBSTRING([MORPHTYPE_BEHAVICDO3],5,1) + '-' + SUBSTRING([PRIMARYSITE],1,3) + '.' + SUBSTRING([PRIMARYSITE],4,1)) as FullCode, MORPHTYPE_BEHAVICDO3, PRIMARYSITE
  FROM [staging].[rc3179].[cancer_registry_str]) reg
left join [staging].[rc3179].[concept] c
  on reg.FullCode=c.concept_code
  where c.concept_code is NULL
  group by FullCode
  order by 'Count' desc