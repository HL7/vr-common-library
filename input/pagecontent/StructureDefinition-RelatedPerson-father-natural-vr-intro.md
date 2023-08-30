### Form Mapping
This profile is mapped to:
 * Item **10a. Father’s Current Legal Name** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **10b. Father’s Date Of Birth** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **19. Father’s Social Security Number** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **19. What is the current legal name of your baby’s father?** in the [2016 US Standard Mothers Worksheet for Child’s Birth Certificate](https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf)
 * Item **20. What is the father’s date of birth?** in the [2016 US Standard Mothers Worksheet for Child’s Birth Certificate](https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf)
 * Item **23. Is the father Spanish/Hispanic/Latino?** in the [2016 US Standard Mothers Worksheet for Child’s Birth Certificate](https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf)
 * Item **24. What is the father’s race?** in the [2016 US Standard Mothers Worksheet for Child’s Birth Certificate](https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf)
 * Item **25b. What is the father’s Social Security Number?** in the [2016 US Standard Mothers Worksheet for Child’s Birth Certificate](https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf)
 * Item **12a. Father’s Current Legal Name** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **12b. Father's Date of Birth** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **11. What is the current legal name of your baby’s father?** in the [2019 US Standard Patient’s Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-mother-worksheet-english-2019-508.pdf)
 * Item **12. What is the father’s date of birth?** in the [2019 US Standard Patient’s Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-mother-worksheet-english-2019-508.pdf)

### IJE Mapping

| **Use Case** | **IJE Field#** | **Description** | **IJE Name** | **Field** |
| ------------ | -------------- | --------------- | ------------ | --------- |
| Natality | 279 | Father's Social Security Number | DAD_SSN | identifier[type=SS] |
| Natality | 274 | Father's First Name | DADFNAME | name.given , name.use = official |
| Natality | 276 | Father's Last Name | DADLNAME | name.family |
| Natality | 275 | Father's Middle Name | DADMNAME | name.given |
| Natality | 277 | Father's Surname Suffix | DADSUFFX | name.suffix |
| Natality | 290 | State, U.S. Territory or Canadian Province of Birth (Father) - code | FBPLACD_ST_TER_C | extension:Extension-relatedperson-birthplace-vr |
| Natality | 291 | Father's Country of Birth (Code) | FBPLACE_CNT_C | extension:Extension-relatedperson-birthplace-vr |
| Natality | 308 | Father's Country of Birth (Literal) | FBPLACE_CNTRY_TXT | extension:Extension-relatedperson-birthplace-vr |
| Natality | 307 | State, U.S. Territory or Canadian Province of Birth (Father) - literal | FBPLACE_ST_TER_TXT | extension:Extension-relatedperson-birthplace-vr |
| Natality | 27 | Date of Birth (Father)--Day | FDOB_DY | birthDate |
| Natality | 26 | Date of Birth (Father)--Month | FDOB_MO | birthDate |
| Natality | 25 | Date of Birth (Father)--Year | FDOB_YR | birthDate |
| Natality | 80 | Father of Hispanic Origin?--Mexican | FETHNIC1 | extension:us-core-ethnicity |
| Natality | 81 | Father of Hispanic Origin?--Puerto Rican | FETHNIC2 | extension:us-core-ethnicity |
| Natality | 82 | Father of Hispanic Origin?--Cuban | FETHNIC3 | extension:us-core-ethnicity |
| Natality | 83 | Father of Hispanic Origin?--Other | FETHNIC4 | extension:us-core-ethnicity |
| Natality | 84 | Father of Hispanic Origin?--Other Literal | FETHNIC5 | extension:us-core-ethnicity |
| Natality | 85 | Father's Race--White | FRACE1 | extension:us-core-race |
| Natality | 94 | Father's Race--Other Asian | FRACE10 | extension:us-core-race |
| Natality | 95 | Father's Race--Native Hawaiian | FRACE11 | extension:us-core-race |
| Natality | 96 | Father's Race--Guamanian or Chamorro | FRACE12 | extension:us-core-race |
| Natality | 97 | Father's Race--Samoan | FRACE13 | extension:us-core-race |
| Natality | 98 | Father's Race--Other Pacific Islander | FRACE14 | extension:us-core-race |
| Natality | 99 | Father's Race--Other | FRACE15 | extension:us-core-race |
| Natality | 100 | Father's Race--First American Indian or Alaska Native Literal | FRACE16 | extension:us-core-race |
| Natality | 101 | Father's Race--Second American Indian or Alaska Native Literal | FRACE17 | extension:us-core-race |
| Natality | 102 | Father's Race--First Other Asian Literal | FRACE18 | extension:us-core-race |
| Natality | 103 | Father's Race--Second Other Asian Literal | FRACE19 | extension:us-core-race |
| Natality | 86 | Father's Race--Black or African American | FRACE2 | extension:us-core-race |
| Natality | 104 | Father's Race--First Other Pacific Islander Literal | FRACE20 | extension:us-core-race |
| Natality | 105 | Father's Race--Second Other Pacific Islander Literal | FRACE21 | extension:us-core-race |
| Natality | 106 | Father's Race--First Other Literal | FRACE22 | extension:us-core-race |
| Natality | 107 | Father's Race--Second Other Literal | FRACE23 | extension:us-core-race |
| Natality | 87 | Father's Race--American Indian or Alaska Native | FRACE3 | extension:us-core-race |
| Natality | 88 | Father's Race--Asian Indian | FRACE4 | extension:us-core-race |
| Natality | 89 | Father's Race--Chinese | FRACE5 | extension:us-core-race |
| Natality | 90 | Father's Race--Filipino | FRACE6 | extension:us-core-race |
| Natality | 91 | Father's Race--Japanese | FRACE7 | extension:us-core-race |
| Natality | 92 | Father's Race--Korean | FRACE8 | extension:us-core-race |
| Natality | 93 | Father's Race--Vietnamese | FRACE9 | extension:us-core-race |
| Fetal Death | 266 | Father's Social Security Number | DAD_SSN | identifier[type=SS] |
| Fetal Death | 261 | Father's Legal First Name | DADFNAME | name.given , name.use = official |
| Fetal Death | 263 | Father's Legal Last Name | DADLNAME | name.family |
| Fetal Death | 262 | Father's Legal Middle Name | DADMNAME | name.given |
| Fetal Death | 264 | Father's Legal Surname Suffix | DADSUFFIX | name.suffix |
| Fetal Death | 27 | Date of Birth (Father)--Day | FDOB_DY | birthDate |
| Fetal Death | 26 | Date of Birth (Father)--Month | FDOB_MO | birthDate |
| Fetal Death | 25 | Date of Birth (Father)--Year | FDOB_YR | birthDate |
| Fetal Death | 285 | Father of Hispanic Origin?--Mexican | FETHNIC1 | extension:us-core-ethnicity |
| Fetal Death | 286 | Father of Hispanic Origin?--Puerto Rican | FETHNIC2 | extension:us-core-ethnicity |
| Fetal Death | 287 | Father of Hispanic Origin?--Cuban | FETHNIC3 | extension:us-core-ethnicity |
| Fetal Death | 288 | Father of Hispanic Origin?--Other | FETHNIC4 | extension:us-core-ethnicity |
| Fetal Death | 289 | Father of Hispanic Origin?--Other Literal | FETHNIC5 | extension:us-core-ethnicity |
| Fetal Death | 290 | Father's Race--White | FRACE1 | extension:us-core-race |
| Fetal Death | 299 | Father's Race--Other Asian | FRACE10 | extension:us-core-race |
| Fetal Death | 300 | Father's Race--Native Hawaiian | FRACE11 | extension:us-core-race |
| Fetal Death | 301 | Father's Race--Guamanian or Chamorro | FRACE12 | extension:us-core-race |
| Fetal Death | 302 | Father's Race--Samoan | FRACE13 | extension:us-core-race |
| Fetal Death | 303 | Father's Race--Other Pacific Islander | FRACE14 | extension:us-core-race |
| Fetal Death | 304 | Father's Race--Other | FRACE15 | extension:us-core-race |
| Fetal Death | 305 | Father's Race--First American Indian or Alaska Native Literal | FRACE16 | extension:us-core-race |
| Fetal Death | 306 | Father's Race--Second American Indian or Alaska Native Literal | FRACE17 | extension:us-core-race |
| Fetal Death | 307 | Father's Race--First Other Asian Literal | FRACE18 | extension:us-core-race |
| Fetal Death | 308 | Father's Race--Second Other Asian Literal | FRACE19 | extension:us-core-race |
| Fetal Death | 291 | Father's Race--Black or African American | FRACE2 | extension:us-core-race |
| Fetal Death | 309 | Father's Race--First Other Pacific Islander Literal | FRACE20 | extension:us-core-race |
| Fetal Death | 310 | Father's Race--Second Other Pacific Islander Literal | FRACE21 | extension:us-core-race |
| Fetal Death | 311 | Father's Race--First Other Literal | FRACE22 | extension:us-core-race |
| Fetal Death | 312 | Father's Race--Second Other Literal | FRACE23 | extension:us-core-race |
| Fetal Death | 292 | Father's Race--American Indian or Alaska Native | FRACE3 | extension:us-core-race |
| Fetal Death | 293 | Father's Race--Asian Indian | FRACE4 | extension:us-core-race |
| Fetal Death | 294 | Father's Race--Chinese | FRACE5 | extension:us-core-race |
| Fetal Death | 295 | Father's Race--Filipino | FRACE6 | extension:us-core-race |
| Fetal Death | 296 | Father's Race--Japanese | FRACE7 | extension:us-core-race |
| Fetal Death | 297 | Father's Race--Korean | FRACE8 | extension:us-core-race |
| Fetal Death | 298 | Father's Race--Vietnamese | FRACE9 | extension:us-core-race |
{: .grid }
