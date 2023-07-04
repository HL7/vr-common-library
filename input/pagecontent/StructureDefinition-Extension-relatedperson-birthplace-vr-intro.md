### Form Mapping
This concept is mapped to:
 * Item **10c. Father’s Birthplace** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **21. In what State, U.S. territory, or foreign country was the father born?** in the [2016 US Standard Mothers Worksheet for Child’s Birth Certificate](https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf)
 * Item **12c. Father's Birthplace** in the [2003 Revision of the U.S. Standard Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)
 * Item **13. In what State, U.S. territory, or foreign country was the father born?** in the [2019 US Standard Patient’s Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-mother-worksheet-english-2019-508.pdf)

### IJE Mapping
| **IJE Use Case**| **IJE Field#** |  **IJE_DESC_COLUMN**   |  **IJE Name**  |
| :---------: | --------------- | ------------ | ------------ |
| Natality| 290 | State, U.S. Territory or Canadian Province of Birth (Father) - code | FBPLACD_ST_TER_C|
| Fetal Death| 277 | State, U.S. Territory or Canadian Province of Birth (Father) - code | FBPLACD_ST_TER_C|
| Natality| 291 | Father's Country of Birth (Code) | FBPLACE_CNT_C|
| Fetal Death| 278 | Father's Country of Birth (Code) | FBPLACE_CNT_C|
| Natality| 308 | Father's Country of Birth (Literal) | FBPLACE_CNTRY_TXT|
| Fetal Death| 282 | Father's Country of Birth (Literal) | FBPLACE_CNTRY_TXT|
| Natality| 307 | State, U.S. Territory or Canadian Province of Birth (Father) - literal | FBPLACE_ST_TER_TXT|
| Fetal Death| 281 | State, U.S. Territory or Canadian Province of Birth (Father) - literal | FBPLACE_ST_TER_TXT|
{: .grid }
