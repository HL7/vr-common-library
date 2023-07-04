This profile adds further constraints to the [US Core Patient]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-patient.html) such as:

* the [patient-birthPlace](http://hl7.org/fhir/StructureDefinition/patient-birthPlace) extension
* the [patient-birthTime](http://hl7.org/fhir/StructureDefinition/patient-birthTime) extension
* the [patient-multipleBirthTotal](http://hl7.org/fhir/StructureDefinition/patient-multipleBirthTotal) extension to record plurality
* the base FHIR [data-absent-reason](http://hl7.org/fhir/StructureDefinition/data-absent-reason) extension to both name.given and name.family (a name may not yet have been chosen for the baby and US Core Patient requires that Patient.name.given or Patient.name.family or both SHALL be present)
** use not-applicable if the name hasn't been chosen

### Form Mapping
This concept is mapped to:
 * Item **1. Child’s Name** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **4. Child's Date Of Birth** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **48. Newborn Medical Record Number** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **53. If Not Single Birth - Born First, Second, Third, etc. (Specify)** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **17. Date of birth** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **22. Infant’s medical record number** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **34. If not single birth, order delivered in the pregnancy** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **Child’s name/medical record #** in the [2016 US Standard Attachment to the Facility Worksheet for the Live Birth Certificate for Multiple Births](https://www.cdc.gov/nchs/data/dvs/multiple-births-worksheet-2016.pdf)
 * Item **17. Date of birth** in the [2016 US Standard Attachment to the Facility Worksheet for the Live Birth Certificate for Multiple Births](https://www.cdc.gov/nchs/data/dvs/multiple-births-worksheet-2016.pdf)
 * Item **34. Order delivered in the pregnancy** in the [2016 US Standard Attachment to the Facility Worksheet for the Live Birth Certificate for Multiple Births](https://www.cdc.gov/nchs/data/dvs/multiple-births-worksheet-2016.pdf)
 * Item **2. What will be your baby’s legal name?** in the [2016 US Standard Mothers Worksheet for Child’s Birth Certificate](https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf)
 * Item **23. If not single delivery, order delivered in the pregnancy** in the [2019 US Standard Facility Worksheet for the Report of Fetal Death](https://www.cdc.gov/nchs/data/dvs/fetal-death-facility-worksheet-2019-508.pdf)

### IJE Mapping

| **Use Case** | **IJE Field#** | **Description** | **IJE Name** |
| ------------ | -------------- | --------------- | ------------ |
| Natality | 9 | Date of Birth (Infant)--Day | IDOB_DY |
| Natality | 8 | Date of Birth (Infant)--Month | IDOB_MO |
| Natality | 1 | Date of Birth (Infant)--Year | IDOB_YR |
| Natality | 332 | Infant's Medical Record Number | INF_MED_REC_NUM |
| Natality | 247 | Child's First Name | KIDFNAME |
| Natality | 249 | Child's Last Name | KIDLNAME |
| Natality | 248 | Child's Middle Name | KIDMNAME |
| Natality | 250 | Child's Surname Suffix (moved from end) | KIDSUFFX |
| Natality | 208 | Set Order | SORD |
{: .grid }
